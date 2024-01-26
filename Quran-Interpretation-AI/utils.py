from configparser import ConfigParser
import cohere
from langchain.text_splitter import CharacterTextSplitter
from langchain_community.vectorstores import FAISS
from langchain_community.embeddings import CohereEmbeddings

# Settings
config = ConfigParser()
config.read("config.ini")
cohere_secret_key = config.get('Cohere', 'secret_key')

# Function to split the data into chunks
def create_chunks(file_path):
    raw_text = ''
    with open(file_path, 'r') as file:
        raw_text = file.read()
    
    text_splitter = CharacterTextSplitter(
        separator = "\n\n\n",
        length_function = len,
    )
    chunks = text_splitter.split_text(raw_text)
    return chunks

# Function to get the interpretation of a given verse or search for a verse depending on the context
def interpret_search(message):
    co = cohere.Client(cohere_secret_key)
    embeddings = CohereEmbeddings(cohere_api_key=cohere_secret_key)
    chunks = create_chunks('interpretation.txt')
    vector_store = FAISS.from_texts(chunks, embeddings)
    docs = vector_store.similarity_search(message)
    if len(docs) == 0:
        response = co.generate(
            prompt=message,
            model='command-xlarge-nightly',
            max_tokens=800,
            temperature=0.2,
            stop_sequences=[],
            return_likelihoods='NONE'
        )
    else:
        response = co.generate(
            prompt=f'{message}. Your job is to provide the interpretation of a given verse, or to retrieve the related verse given a context : {docs[0].page_content} ',
            model='command-xlarge-nightly',
            max_tokens=800,
            temperature=0.2,
            stop_sequences=[],
            return_likelihoods='NONE'
        )
    return  response.generations[0].text


# Function to summarize 
def summarize(message):
    co = cohere.Client(cohere_secret_key)
    embeddings = CohereEmbeddings(cohere_api_key=cohere_secret_key)
    chunks = create_chunks('summarization.txt')
    vector_store = FAISS.from_texts(chunks, embeddings)
    docs = vector_store.similarity_search(message)
    if len(docs) == 0:
        response = 'Sorry! There are no related topics to summarize. Please check your input.'
    else:
        context = ''
        for doc in docs:
            context += doc.page_content + '\n\n\n'
        response = co.generate(
            prompt=f'{message}. Your job is to provide a summary of the given titles using only this context: {context}',
            model='command-xlarge-nightly',
            max_tokens=800,
            temperature=0.2,
            stop_sequences=[],
            return_likelihoods='NONE'
        )
    return  response.generations[0].text

# Function to elaborate on a given question 
def explore(message):
    co = cohere.Client(cohere_secret_key)
    embeddings = CohereEmbeddings(cohere_api_key=cohere_secret_key)
    chunks = create_chunks('elaboration.txt')
    vector_store = FAISS.from_texts(chunks, embeddings)
    docs = vector_store.similarity_search(message)
    if len(docs) == 0:
        response = 'Sorry! I am not in a position to answer this as it is out of the scope of what we learn here. Please ask your teacher or check authentic sources.'
    else:
        context = ''
        for doc in docs:
            context += doc.page_content + '\n\n\n'
        response = co.generate(
            prompt=f'{message}. Your job is to answer this question only by using the given context: {context}',
            model='command-xlarge-nightly',
            max_tokens=800,
            temperature=0.2,
            stop_sequences=[],
            return_likelihoods='NONE'
        )
    return  response.generations[0].text


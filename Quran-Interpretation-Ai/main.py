from fastapi import FastAPI
from utils import *

app = FastAPI()

@app.get("/")
async def root():
    return {"message": "Welcome to Quran Search API!"}

@app.get("/quran_search/{message}")
async def model_response(message: str = None):
    response = interpret_search(message)
    return {"response": response}

@app.get("/summarize/{message}")
async def model_response(message: str = None):
    response = summarize(message)
    return {"response": response}

@app.get("/exlore/{message}")
async def model_response(message: str = None):
    response = explore(message)
    return {"response": response}
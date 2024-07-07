<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProphetStoriesTable extends Migration
{
    public function up()
    {
        Schema::create('prophet_stories', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('prophetId');
            $table->string('arabicStoryTitle');
            $table->string('englishStoryTitle');
            $table->text('arabicStoryContent');
            $table->text('englishStoryContent');
            $table->timestamp('publishedAt')->useCurrent();
            $table->primary('id');
            $table->foreign('prophetId')->references('id')->on('prophets')->onDelete('cascade');
        });
    }

    public function down()
    {
        Schema::dropIfExists('prophet_stories');
    }
}

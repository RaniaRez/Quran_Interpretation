<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProphetsTable extends Migration
{
    public function up()
    {
        Schema::create('prophets', function (Blueprint $table) {
            $table->id();
            $table->string('arabicName');
            $table->string('englishName');
            $table->text('arabicBiography')->nullable();
            $table->text('englishBiography')->nullable();
            $table->timestamps();
            $table->timestamp('updatedAt')->useCurrent()->onUpdate('CURRENT_TIMESTAMP');
            $table->primary('id');
        });
    }

    public function down()
    {
        Schema::dropIfExists('prophets');
    }
}

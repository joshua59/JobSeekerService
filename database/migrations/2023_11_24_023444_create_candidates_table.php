<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCandidatesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('t_candidate', function (Blueprint $table) {
            $table->id();
            $table->string('email', 100)->unique();
            $table->string('phone_number', 100)->unique()->nullable();
            $table->string('full_name', 100);
            $table->date('dob')->description('Date of birth');
            $table->string('pob')->description('Place of birth');
            $table->string('gender', 1)->description('F for Female, M for male');
            $table->string('year_exp', 3)->description('Year of experience');
            $table->string('last_salary')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('candidates');
    }
}

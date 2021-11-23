<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCoinWithdrawalsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('coin_withdrawals', function (Blueprint $table) {
            $table->id();

            $table->bigInteger('users_id');
            $table->integer('total');
            $table->string('bank_address');
            $table->string('bank_name');
            $table->string('status')->default('PENDING');

            $table->softDeletes();
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
        Schema::dropIfExists('coin_withdrawals');
    }
}

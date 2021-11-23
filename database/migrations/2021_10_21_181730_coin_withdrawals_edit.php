<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CoinWithdrawalsEdit extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('coin_withdrawals', function (Blueprint $table) {
            $table->string('bank_owner_name')->after('bank_address');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('coin_withdrawals', function (Blueprint $table) {
            $table->dropColumn('bank_owner_name');
        });
    }
}

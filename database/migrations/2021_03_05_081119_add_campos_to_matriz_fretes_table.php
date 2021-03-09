<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddCamposToMatrizFretesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('matriz_fretes', function (Blueprint $table) {
            //$table->foreignId('safra_id')->constrained()->cascadeOnDelete()->default(2);
            $table->unsignedBigInteger('safra_id')->default(2); // Id de referencia do ciclo
            $table->foreign('safra_id')->references('id')->on('safras')->onDelete('cascade')->onUpdate('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('matriz_fretes', function (Blueprint $table) {
            //
        });
    }
}

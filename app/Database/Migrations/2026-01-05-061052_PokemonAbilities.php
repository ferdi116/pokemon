<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class PokemonAbilities extends Migration
{
    public function up()
    {
        $this->forge->addField([
            'pokemon_id' => ['type'=>'INT'],
            'ability_id' => ['type'=>'INT'],
        ]);
        $this->forge->createTable('pokemon_abilities');
    }

    public function down()
    {
        //
    }
}

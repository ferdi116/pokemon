<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class Pokemon extends Migration
{
    public function up()
    {
        $this->forge->addField([
            'id' => ['type'=>'INT','constraint'=>11,'auto_increment'=>true],
            'name' => ['type'=>'VARCHAR','constraint'=>100],
            'base_experience' => ['type'=>'INT'],
            'weight' => ['type'=>'INT'],
            'image_path' => ['type'=>'VARCHAR','constraint'=>255],
        ]);
        $this->forge->addKey('id', true);
        $this->forge->createTable('pokemons');
    }

    public function down()
    {
        //
    }
}

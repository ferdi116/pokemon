<?php

namespace App\Models;

use CodeIgniter\Model;

class PokemonModel extends Model
{
    protected $table = 'pokemons';
    protected $allowedFields = [
        'name','base_experience','weight','image_path'
    ];
}

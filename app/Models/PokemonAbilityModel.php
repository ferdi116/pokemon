<?php

namespace App\Models;

use CodeIgniter\Model;

class PokemonAbilityModel extends Model
{
    protected $table = 'pokemon_abilities';
    protected $allowedFields = ['pokemon_id','ability_id'];
}
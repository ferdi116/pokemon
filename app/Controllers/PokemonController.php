<?php

namespace App\Controllers;
use App\Controllers\BaseController;
use App\Models\PokemonModel;
use App\Models\AbilityModel;
use App\Models\PokemonAbilityModel;

class PokemonController extends BaseController
{
    public function index()
    {
        $db = db_connect();
        $filter = $this->request->getGet('weight');

        $where = '';
        if ($filter == 'light') $where = 'AND p.weight BETWEEN 100 AND 150';
        if ($filter == 'medium') $where = 'AND p.weight BETWEEN 151 AND 199';
        if ($filter == 'heavy') $where = 'AND p.weight >= 200';

        $query = "
        SELECT p.*, GROUP_CONCAT(a.name SEPARATOR ', ') AS abilities
        FROM pokemons p
        JOIN pokemon_abilities pa ON pa.pokemon_id = p.id
        JOIN abilities a ON a.id = pa.ability_id
        WHERE 1=1 $where
        GROUP BY p.id
        ORDER BY p.weight DESC
        ";

        $data['pokemons'] = $db->query($query)->getResultArray();
        return view('index',$data);
    }
}

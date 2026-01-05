<?php

namespace App\Controllers;
use App\Models\AbilitiesModel;
use App\Models\PokemonAbilitiesModel;
use App\Models\PokemonModel;

class Home extends BaseController
{
    public function index(): string
    {
        
        return view('welcome_message');
        
    }

}

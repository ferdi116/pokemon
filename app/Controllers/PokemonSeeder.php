<?php

namespace App\Controllers;
use App\Controllers\BaseController;
use App\Models\PokemonModel;
use App\Models\AbilityModel;
use App\Models\PokemonAbilityModel;

class PokemonSeeder extends BaseController
{
    public function fetch()
    {
        $pokemonModel = new PokemonModel();
        $abilityModel = new AbilityModel();
        $pivotModel   = new PokemonAbilityModel();

        for ($id=1; $id<=400; $id++) {

            $json = file_get_contents("https://pokeapi.co/api/v2/pokemon/$id");
            $data = json_decode($json,true);

            if ($data['weight'] < 100) continue;

            $imgUrl = $data['sprites']['front_default'];
            $imgName = $data['name'].'.png';
            $imgPath = 'pokemon_images/'.$imgName;
            file_put_contents(FCPATH.$imgPath, file_get_contents($imgUrl));

            $pokemonId = $pokemonModel->insert([
                'name' => $data['name'],
                'base_experience' => $data['base_experience'],
                'weight' => $data['weight'],
                'image_path' => $imgPath
            ]);

            foreach ($data['abilities'] as $ab) {
                if ($ab['is_hidden']) continue;

                $ability = $abilityModel
                    ->where('name',$ab['ability']['name'])
                    ->first();

                if (!$ability) {
                    $abilityId = $abilityModel->insert([
                        'name'=>$ab['ability']['name']
                    ]);
                } else {
                    $abilityId = $ability['id'];
                }

                $pivotModel->insert([
                    'pokemon_id'=>$pokemonId,
                    'ability_id'=>$abilityId
                ]);
            }
        }

        return redirect()->to('/');
    }
}

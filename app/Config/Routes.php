<?php

use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */
$routes->get('/pokemon', 'PokemonController::index');
$routes->get('/pokemonseeder/fetch', 'PokemonSeeder::fetch');

<?php

use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */
$routes->get('/', 'PokemonController::index');
$routes->get('/fetch', 'PokemonSeeder::fetch');

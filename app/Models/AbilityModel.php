<?php

namespace App\Models;

use CodeIgniter\Model;

class AbilityModel extends Model
{
    protected $table = 'abilities';
    protected $allowedFields = ['name'];
}
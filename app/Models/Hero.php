<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Hero extends Model
{
    use HasFactory;

    public function awardees()
    {
        return $this->hasMany(Awardee::class, 'id_hero');
    }
}

<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Awardee extends Model
{
    use HasFactory;

    protected $table = 'awardee';

    public function hero(){
        return $this->belongsTo(Hero::class, 'id_hero');
    }
}

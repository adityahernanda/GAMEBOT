<?php

namespace App\Models;

use CodeIgniter\Model;

class GameModels extends Model
{
    protected $table = 'gamebot';
    protected $primaryKey = 'idgame';

    public function showalldata()
    {
        return $this->select('*')->findAll();
    }

    public function showaction()
    {
        return $this->select('*')->where('genre', 'action')->findAll();
    }

    public function showadventure()
    {
        return $this->select('*')->where('genre', 'adventure')->findAll();
    }

    public function showracing()
    {
        return $this->select('*')->where('genre', 'racing')->findAll();
    }

    public function showsimulation()
    {
        return $this->select('*')->where('genre', 'simulation')->findAll();
    }

    public function showsports()
    {
        return $this->select('*')->where('genre', 'sports')->findAll();
    }

    public function dataHarga()
    {
        return $this->select('harga')->findAll();
    }

    public function dataJumlahR()
    {
        return $this->select('jumlah_review')->findAll();
    }

    public function dataReviewP()
    {
        return $this->select('reviewp')->findAll();
    }

    public function search($keyword){
        return $this->select('*')->like('nama__game', $keyword)->findAll();
    }

    public function hargaRendah(){
        return $this->select('*')->orderBy('harga','ASC')->findAll();
    }

    public function hargaTinggi(){
        return $this->select('*')->orderBy('harga','DESC')->findAll();
    }

    public function reviewP(){
        return $this->select('*')->orderBy('reviewp','DESC')->findAll();
    }

    public function reviewN(){
        return $this->select('*')->orderBy('reviewn','DESC')->findAll();
    }
};

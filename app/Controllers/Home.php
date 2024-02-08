<?php

namespace App\Controllers;

use App\Models\GameModels;

class Home extends BaseController
{
    protected $gamebot;
    function __construct()
    {
        $this->gamebot = new GameModels();
    }

    public function index()
    {
        $allgame = $this->gamebot->showalldata();
        $gameaction = $this->gamebot->showaction();
        $gameadventure = $this->gamebot->showadventure();
        $gameracing = $this->gamebot->showracing();
        $gamesimulation = $this->gamebot->showsimulation();
        $gamesports = $this->gamebot->showsports();
        $harga = $this->gamebot->dataHarga();
        $jumlahr = $this->gamebot->dataJumlahR();
        $reviewp = $this->gamebot->dataReviewP();


        // d($this->request->getVar('keyword'));
        // d($this->request->getVar('combo'));

        $combo = $this->request->getVar('combo');
        if ($combo === 'harga rendah') {
            $semua = $this->gamebot->hargaRendah();
            // dd($semua);
        } else if ($combo === 'harga tinggi') {
            $semua = $this->gamebot->hargaTinggi();
        } else if ($combo === 'review buruk') {
            $semua = $this->gamebot->reviewN();
        } else if ($combo === 'review baik') {
            $semua = $this->gamebot->reviewP();
        } else {
            $semua = $allgame;
        }

        $keyword = $this->request->getVar('keyword');
        if ($keyword) {
            $semua = $this->gamebot->search($keyword);
        }
        //  else {
        //     $semua = $allgame;
        // }

        // $clear = $this->request->getVar('clear');
        // if (!$keyword) {
        //     $semua = $allgame;
        // }

        // Cara CONNECT DB Manual
        $db = \Config\Database::connect();
        $dataGame = $db->query("SELECT * FROM gamebot WHERE nama__game LIKE '%$keyword%' ORDER BY nama__game DESC");
        $res = $dataGame->getResultArray();
        // Cek apakah ada yang cocok atau tidak.
        if (count($res)>0) {
            foreach ($res as $game) {
                $output['suggestions'][] = [
                    'value' => $game['nama__game'],
                    'namaGim'  => $game['nama__game']
                ];
            }
            // Encode ke JSON.
            // echo json_encode($output);
        } else {
            $output['suggestions'][] = [
                'value' => '',
                'namaGim'  => ''
            ];
        
            // Encode ke JSON.
            echo json_encode($output);
        }

        $data = [
            "allgame" => $semua,
            'action' => $gameaction,
            'adventure' => $gameadventure,
            'racing' => $gameracing,
            'simulation' => $gamesimulation,
            'sports' => $gamesports,
            'pencarian' => $keyword,
            'sortir' => $combo,
        ];

        return view('viewgame/viewgame', $data);
    }
}

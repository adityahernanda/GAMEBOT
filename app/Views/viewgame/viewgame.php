    <?= $this->extend('layout/template'); ?>
    <?= $this->section('content'); ?>

    <!-- Awal Main -->
    <div id="main" class="main">
        <div class="container">
            <div class="row" data-aos="fade-down" data-aos-duration="1500">
                <!-- Menu Tabs -->
                <ul class="nav nav-tabs justify-content-between gap-2" id="myTab" role="tablist">
                    <div class="d-flex flex-row flex-wrap">
                        <li class="nav-item" role="presentation">
                            <button class="nav-link active" id="all-tab" data-bs-toggle="tab" data-bs-target="#all-tab-pane" type="button" role="tab" aria-controls="all-tab-pane" aria-selected="true">
                                SEMUA
                            </button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="action-tab" data-bs-toggle="tab" data-bs-target="#action-tab-pane" type="button" role="tab" aria-controls="action-tab-pane" aria-selected="true">
                                ACTION
                            </button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="adventure-tab" data-bs-toggle="tab" data-bs-target="#adventure-tab-pane" type="button" role="tab" aria-controls="rpg-tab-pane" aria-selected="false">
                                ADVENTURE
                            </button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="racing-tab" data-bs-toggle="tab" data-bs-target="#racing-tab-pane" type="button" role="tab" aria-controls="mmo-tab-pane" aria-selected="false">
                                RACING
                            </button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="simulation-tab" data-bs-toggle="tab" data-bs-target="#simulation-tab-pane" type="button" role="tab" aria-controls="moba-tab-pane" aria-selected="false">
                                SIMULATION
                            </button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="sports-tab" data-bs-toggle="tab" data-bs-target="#sports-tab-pane" type="button" role="tab" aria-controls="moba-tab-pane" aria-selected="false">
                                SPORTS
                            </button>
                        </li>
                    </div>
                    <div class="search-container">
                        <form action="#main" method="POST" class="d-flex" role="search">
                            <input class="form-control me-2" id="input-box" type="search" placeholder="Cari Game" aria-label="Search" autocomplete="off" name="keyword" />
                            <button class="btn btn-outline-salmon" type="submit" name="submit">
                                <i class="bi bi-search"></i>
                            </button>
                        </form>
                        <form action="#main" method="POST" class="d-flex" role="search">
                            <input class="form-control me-2" id="input-box" type="text" placeholder="Cari" aria-label="Search" autocomplete="off" name="clear" hidden />

                            <button class="btn btn-outline-warning ms-1" type="submit" name="submit">
                                <i class="bi bi-arrow-clockwise"></i>
                            </button>
                        </form>
                        <div class="result-box">
                            <!-- <ul>
                            <li>Angry Bird</li>
                            <li>Bomb</li>
                            <li>Counter-Strike</li>
                            </ul> -->
                        </div>
                    </div>
                </ul>
                <!-- Akhir Menu Tabs -->

                <div class="dropdown dropend">
                    <button class="btn btn-secondary mt-3 filter-btn" data-bs-toggle="dropdown" aria-expanded="false" data-bs-auto-close="outside"><i class="bi bi-sliders"></i> Filter</button>
                    <form action="#main" method="POST" class="dropdown-menu p-3">
                        <legend>Filter : Sort</legend>
                        <div class="mb-3">
                            <select class="form-select combo-sort" aria-label="Default select example" name="combo">
                                <option selected>-- Sort By --</option>
                                <option value="harga rendah">Harga Rendah</option>
                                <option value="harga tinggi">Harga Tinggi</option>
                                <option value="review buruk">Review Buruk</option>
                                <option value="review baik">Review Baik</option>
                            </select>
                        </div>
                        <button type="submit" class="btn btn-outline-salmon">Sort</button>
                    </form>
                </div>

                <!-- Isi Menu Tabs -->
                <div class="tab-content" id="myTabContent">
                    <!-- Semua Game -->
                    <div class="tab-pane fade show active" id="all-tab-pane" role="tabpanel" aria-labelledby="all-tab" tabindex="0">
                        <!-- <p>SEMUA GAME...</p> -->

                        <?php
                        if ($pencarian) {
                            echo "<p class='text-center mt-2'>Hasil dari pencarian <span class='fw-bold bg-warning p-2'>" . $pencarian . "</span>";
                        }
                        ?>

                        <!-- Awal Row -->
                        <div class="row">
                            <!-- Awal Rumus -->
                            <?php
                            $count = 0;
                            ?>
                            <?php foreach ($allgame as $key => $g) : ?>
                                <?php
                                $harga = $g['harga'] + 0.0;
                                $jumlahreview = $g['jumlah_review'] + 0.0;
                                $reviewpos = $g['hasilpersen'] + 0.0;

                                if ($harga < 0 && $jumlahreview < 0 && $reviewpos < 0) {
                                    echo ("DATA TIDAK VALID!");
                                }

                                //hargaRendah
                                if ($harga < 100000) {
                                    $hargarendah = 1;
                                } else if ($harga >= 100000 && $harga <= 400000) {
                                    $hargarendah = (400000 - $harga) / (400000 - 100000);
                                } else if ($harga > 400000) {
                                    $hargarendah = 0;
                                }

                                //  hargaSedang
                                if ($harga == 400000) {
                                    $hargasedang = 1;
                                } else if ($harga >= 100000 && $harga <= 400000) {
                                    $hargasedang = ($harga - 100000) / (400000 - 100000);
                                } else if ($harga >= 400000 && $harga <= 800000) {
                                    $hargasedang = (800000 - $harga) / (800000 - 400000);
                                } else if ($harga < 100000 || $harga > 800000) {
                                    $hargasedang = 0;
                                }

                                // hargaTinggi
                                if ($harga > 800000) {
                                    $hargatinggi = 1;
                                } else if ($harga > 400000 && $harga < 800000) {
                                    $hargatinggi = ($harga - 400000) / (800000 - 400000);
                                } else if ($harga < 400000) {
                                    $hargatinggi = 0;
                                }

                                // jumlahRendah
                                if ($jumlahreview < 100000) {
                                    $jumlahrrendah = 1;
                                } else if ($jumlahreview >= 100000 && $jumlahreview <= 400000) {
                                    $jumlahrrendah = (400000 - $jumlahreview) / (400000 - 100000);
                                } else if ($jumlahreview > 400000) {
                                    $jumlahrrendah = 0;
                                }

                                //  jumlahSedang
                                if ($jumlahreview == 400000) {
                                    $jumlahrsedang = 1;
                                } else if ($jumlahreview >= 100000 && $jumlahreview <= 400000) {
                                    $jumlahrsedang = ($jumlahreview - 100000) / (400000 - 100000);
                                } else if ($jumlahreview >= 400000 && $jumlahreview <= 800000) {
                                    $jumlahrsedang = (800000 - $jumlahreview) / (800000 - 400000);
                                } else if ($jumlahreview < 100000 || $jumlahreview > 800000) {
                                    $jumlahrsedang = 0;
                                }

                                // jumlahTinggi
                                if ($jumlahreview > 800000) {
                                    $jumlahrtinggi = 1;
                                } else if ($jumlahreview >= 400000 && $jumlahreview <= 800000) {
                                    $jumlahrtinggi = ($jumlahreview - 400000) / (800000 - 400000);
                                } else if ($jumlahreview < 400000) {
                                    $jumlahrtinggi = 0;
                                }

                                // Review Positif - Baru (Percobaan)
                                //reviewpJelek
                                if ($reviewpos < 30) {
                                    $reviewpjelek = 1;
                                } else if ($reviewpos >= 30 && $reviewpos <= 50) {
                                    $reviewpjelek = (50 - $reviewpos) / (50 - 30);
                                } else if ($reviewpos > 50) {
                                    $reviewpjelek = 0;
                                }
                                //reviewpBaik
                                if ($reviewpos > 70) {
                                    $reviewpbaik = 1;
                                } else if ($reviewpos >= 50 && $reviewpos <= 70) {
                                    $reviewpbaik = ($reviewpos - 50) / (100 - 70);
                                } else if ($reviewpos < 50) {
                                    $reviewpbaik = 0;
                                }

                                $z1 = 0;
                                $z2 = 0;
                                $z3 = 0;
                                $z4 = 0;
                                $z5 = 0;
                                $z6 = 0;
                                $z7 = 0;
                                $z8 = 0;
                                $z9 = 0;
                                $z10 = 0;
                                $z11 = 0;
                                $z12 = 0;
                                $z13 = 0;
                                $z14 = 0;
                                $z15 = 0;
                                $z16 = 0;
                                $z17 = 0;
                                $z18 = 0;

                                // Percobaan new rules, rekomendasi(saran)
                                $a1 = min($hargarendah, $jumlahrrendah, $reviewpbaik); //beli game
                                $z1 = $a1 * (100 - 70) + 50;
                                $a2 = min($hargarendah, $jumlahrrendah, $reviewpjelek); //tidakbeli game
                                $z2 = 50 - $a2 * (50 - 30);
                                $a3 = min($hargarendah, $jumlahrsedang, $reviewpbaik); //beli game
                                $z3 =  $a3 * (100 - 70) + 50;
                                $a4 = min($hargarendah, $jumlahrsedang, $reviewpjelek); //tidakbeli game
                                $z4 =  50 - $a4 * (50 - 30);
                                $a5 = min($hargarendah, $jumlahrtinggi, $reviewpbaik); //beli game
                                $z5 =  $a5 * (100 - 70) + 50;
                                $a6 = min($hargarendah, $jumlahrtinggi, $reviewpjelek); //tidakbeli game
                                $z6 =  50 - $a6 * (50 - 30);
                                //
                                $a7 = min($hargasedang, $jumlahrrendah, $reviewpbaik); //beli game
                                $z7 =  $a7 * (100 - 70) + 50;
                                $a8 = min($hargasedang, $jumlahrrendah, $reviewpjelek); //tidakbeli game
                                $z8 =  50 - $a8 * (50 - 30);
                                $a9 = min($hargasedang, $jumlahrsedang, $reviewpbaik); //beli game
                                $z9 =  $a9 * (100 - 70) + 50;
                                $a10 = min($hargasedang, $jumlahrsedang, $reviewpjelek); //tidakbeli game
                                $z10 = 50 - $a10 * (50 - 30);
                                $a11 = min($hargasedang, $jumlahrtinggi, $reviewpbaik); //beli game
                                $z11 =  $a11 * (100 - 70) + 50;
                                $a12 = min($hargasedang, $jumlahrtinggi, $reviewpjelek); //tidakbeli game
                                $z12 = 50 - $a12 * (50 - 30);
                                //
                                $a13 = min($hargatinggi, $jumlahrrendah, $reviewpbaik); //beli game
                                $z13 =  $a13 * (100 - 70) + 50;
                                $a14 = min($hargatinggi, $jumlahrrendah, $reviewpjelek); //tidakbeli game
                                $z14 =  50 - $a13 * (50 - 30);
                                $a15 = min($hargatinggi, $jumlahrsedang, $reviewpbaik); //beli game
                                $z15 =  $a15 * (100 - 70) + 50;
                                $a16 = min($hargatinggi, $jumlahrsedang, $reviewpjelek); //tidakbeli game
                                $z16 =  50 - $a16 * (50 - 30);
                                $a17 = min($hargatinggi, $jumlahrtinggi, $reviewpbaik); //beli game
                                $z17 =  $a17 * (100 - 70) + 50;
                                $a18 = min($hargatinggi, $jumlahrtinggi, $reviewpjelek); //tidakbeli game
                                $z18 =  50 - $a18 * (50 - 30);

                                $total_AiZi = ($a1 * $z1) + ($a2 * $z2) + ($a3 * $z3) + ($a4 * $z4) + ($a5 * $z5) + ($a6 * $z6) + ($a7 * $z7) + ($a8 * $z8) + ($a9 * $z9) + ($a10 * $z10) + ($a11 * $z11) + ($a12 * $z12) + ($a13 * $z13) + ($a14 * $z14) + ($a15 * $z15) + ($a16 * $z16) + ($a17 * $z17) + ($a18 * $z18);

                                $total_a = $a1 + $a2 + $a3 + $a4 + $a5 + $a6 + $a7 + $a8 + $a9 + $a10 + $a11 + $a12 + $a13 + $a14 + $a15 + $a16 + $a17 + $a18;

                                $z = round($total_AiZi, 2) / round($total_a, 2);

                                $result = round($z, 2);

                                if ($result > 70) {
                                    $saran = "Beli";
                                } else if ($result < 70 && $result > 60) {
                                    $saran = "Beli saat diskon";
                                } else {
                                    $saran = "Tidak Beli";
                                }
                                $count++;
                                ?>
                                <!-- Akhir Rumus -->


                                <div class="col-lg-3 col-md-4">
                                    <!-- Button trigger modal -->
                                    <a href="" data-bs-toggle="modal" data-bs-target="#<?= $g['idgame']; ?>">
                                        <div class="card">
                                            <div class="card-body"><?= $g['nama__game']; ?>, <?= $g['genre']; ?>, Rp <?= number_format($g['harga'], 0, ",", "."); ?></div>
                                        </div>
                                    </a>
                                    <!-- Modal -->

                                    <div class="modal fade" id="<?= $g['idgame']; ?>" tabindex="-1" aria-labelledby="DOTAModalLabel" aria-hidden="true">
                                        <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h1 class="modal-title fs-5" id="exampleModalLabel">
                                                        <?= $g['nama__game']; ?>
                                                    </h1>
                                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                </div>

                                                <div class="modal-body">
                                                    <div class="row">
                                                        <div class="col-lg-6">
                                                            <h6>Minimum Spesifikasi :</h6>
                                                            <ul>
                                                                <li>
                                                                    Processor :
                                                                    <strong>
                                                                        <?= $g['processor']; ?></strong>
                                                                </li>
                                                                <li>
                                                                    Memory :
                                                                    <strong><?= $g['ram']; ?></strong>
                                                                </li>
                                                                <li>
                                                                    Graphic :
                                                                    <strong>
                                                                        <?= $g['gpu']; ?>
                                                                    </strong>
                                                                </li>
                                                                <li>
                                                                    Storage :
                                                                    <strong><?= $g['storage_game']; ?></strong>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                        <div class="col-lg-6">
                                                            <h6>Harga dan Review :</h6>
                                                            <ul>
                                                                <li id="hargaall">
                                                                    Harga :
                                                                    <strong>Rp <?= number_format($g['harga'], 0, ",", "."); ?></strong>
                                                                </li>
                                                                <li id="reviewpall">
                                                                    Review Positif :
                                                                    <strong><?= number_format($g['reviewp'], 0, ",", "."); ?></strong>
                                                                </li>
                                                                <li>
                                                                    Review Negatif :
                                                                    <strong><?= number_format($g['reviewn'], 0, ",", "."); ?></strong>
                                                                </li>
                                                                <li id="jumlahrall">
                                                                    Jumlah Review :
                                                                    <strong><?= number_format($g['jumlah_review'], 0, ",", "."); ?></strong>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-lg-6">
                                                            <h6>Genre :</h6>
                                                            <p>
                                                                <strong><?= $g['genre']; ?></strong>
                                                            </p>
                                                        </div>
                                                        <div class="col-lg-6">
                                                            <h6>Rekomendasi :</h6>
                                                            <p>
                                                                <strong><?= $saran; ?></strong>
                                                            </p>
                                                        </div>
                                                        <div class="col-lg-6">
                                                            <h6>Hasil Hitungan Fuzzy :</h6>
                                                            <p>
                                                                <strong><?= $z; ?></strong>
                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            <?php endforeach; ?>
                        </div>
                        <!-- Akhir Row -->
                    </div>
                    <!-- Akhir Semua Game -->

                    <!-- Action Game -->
                    <div class="tab-pane fade show" id="action-tab-pane" role="tabpanel" aria-labelledby="action-tab" tabindex="0">
                        <!-- <p>ACTION GAME...</p> -->

                        <!-- Awal Row -->
                        <div class="row">
                            <?php foreach ($action as $key => $a) : ?>

                                <?php
                                $harga = $a['harga'] + 0.0;
                                $jumlahreview = $a['jumlah_review'] + 0.0;
                                $reviewpos = $a['hasilpersen'] + 0.0;

                                if ($harga < 0 && $jumlahreview < 0 && $reviewpos < 0) {
                                    echo ("DATA TIDAK VALID!");
                                }

                                //hargaRendah
                                if ($harga < 100000) {
                                    $hargarendah = 1;
                                } else if ($harga >= 100000 && $harga <= 400000) {
                                    $hargarendah = (400000 - $harga) / (400000 - 100000);
                                } else if ($harga > 400000) {
                                    $hargarendah = 0;
                                }

                                //  hargaSedang
                                if ($harga == 400000) {
                                    $hargasedang = 1;
                                } else if ($harga >= 100000 && $harga <= 400000) {
                                    $hargasedang = ($harga - 100000) / (400000 - 100000);
                                } else if ($harga >= 400000 && $harga <= 800000) {
                                    $hargasedang = (800000 - $harga) / (800000 - 400000);
                                } else if ($harga < 100000 || $harga > 800000) {
                                    $hargasedang = 0;
                                }

                                // hargaTinggi
                                if ($harga > 800000) {
                                    $hargatinggi = 1;
                                } else if ($harga > 400000 && $harga < 800000) {
                                    $hargatinggi = ($harga - 400000) / (800000 - 400000);
                                } else if ($harga < 400000) {
                                    $hargatinggi = 0;
                                }

                                // jumlahRendah
                                if ($jumlahreview < 100000) {
                                    $jumlahrrendah = 1;
                                } else if ($jumlahreview >= 100000 && $jumlahreview <= 400000) {
                                    $jumlahrrendah = (400000 - $jumlahreview) / (400000 - 100000);
                                } else if ($jumlahreview > 400000) {
                                    $jumlahrrendah = 0;
                                }

                                //  jumlahSedang
                                if ($jumlahreview == 400000) {
                                    $jumlahrsedang = 1;
                                } else if ($jumlahreview >= 100000 && $jumlahreview <= 400000) {
                                    $jumlahrsedang = ($jumlahreview - 100000) / (400000 - 100000);
                                } else if ($jumlahreview >= 400000 && $jumlahreview <= 800000) {
                                    $jumlahrsedang = (800000 - $jumlahreview) / (800000 - 400000);
                                } else if ($jumlahreview < 100000 || $jumlahreview > 800000) {
                                    $jumlahrsedang = 0;
                                }

                                // jumlahTinggi
                                if ($jumlahreview > 800000) {
                                    $jumlahrtinggi = 1;
                                } else if ($jumlahreview >= 400000 && $jumlahreview <= 800000) {
                                    $jumlahrtinggi = ($jumlahreview - 400000) / (800000 - 400000);
                                } else if ($jumlahreview < 400000) {
                                    $jumlahrtinggi = 0;
                                }

                                // Review Positif - Baru (Percobaan)
                                //reviewpJelek
                                if ($reviewpos < 30) {
                                    $reviewpjelek = 1;
                                } else if ($reviewpos >= 30 && $reviewpos <= 50) {
                                    $reviewpjelek = (50 - $reviewpos) / (50 - 30);
                                } else if ($reviewpos > 50) {
                                    $reviewpjelek = 0;
                                }
                                //reviewpBaik
                                if ($reviewpos > 70) {
                                    $reviewpbaik = 1;
                                } else if ($reviewpos >= 50 && $reviewpos <= 70) {
                                    $reviewpbaik = ($reviewpos - 50) / (100 - 70);
                                } else if ($reviewpos < 50) {
                                    $reviewpbaik = 0;
                                }

                                $z1 = 0;
                                $z2 = 0;
                                $z3 = 0;
                                $z4 = 0;
                                $z5 = 0;
                                $z6 = 0;
                                $z7 = 0;
                                $z8 = 0;
                                $z9 = 0;
                                $z10 = 0;
                                $z11 = 0;
                                $z12 = 0;
                                $z13 = 0;
                                $z14 = 0;
                                $z15 = 0;
                                $z16 = 0;
                                $z17 = 0;
                                $z18 = 0;

                                // Percobaan new rules, rekomendasi(saran)
                                $a1 = min($hargarendah, $jumlahrrendah, $reviewpbaik); //beli game
                                $z1 = $a1 * (100 - 70) + 50;
                                $a2 = min($hargarendah, $jumlahrrendah, $reviewpjelek); //tidakbeli game
                                $z2 = 50 - $a2 * (50 - 30);
                                $a3 = min($hargarendah, $jumlahrsedang, $reviewpbaik); //beli game
                                $z3 =  $a3 * (100 - 70) + 50;
                                $a4 = min($hargarendah, $jumlahrsedang, $reviewpjelek); //tidakbeli game
                                $z4 =  50 - $a4 * (50 - 30);
                                $a5 = min($hargarendah, $jumlahrtinggi, $reviewpbaik); //beli game
                                $z5 =  $a5 * (100 - 70) + 50;
                                $a6 = min($hargarendah, $jumlahrtinggi, $reviewpjelek); //tidakbeli game
                                $z6 =  50 - $a6 * (50 - 30);
                                //
                                $a7 = min($hargasedang, $jumlahrrendah, $reviewpbaik); //beli game
                                $z7 =  $a7 * (100 - 70) + 50;
                                $a8 = min($hargasedang, $jumlahrrendah, $reviewpjelek); //tidakbeli game
                                $z8 =  50 - $a8 * (50 - 30);
                                $a9 = min($hargasedang, $jumlahrsedang, $reviewpbaik); //beli game
                                $z9 =  $a9 * (100 - 70) + 50;
                                $a10 = min($hargasedang, $jumlahrsedang, $reviewpjelek); //tidakbeli game
                                $z10 = 50 - $a10 * (50 - 30);
                                $a11 = min($hargasedang, $jumlahrtinggi, $reviewpbaik); //beli game
                                $z11 =  $a11 * (100 - 70) + 50;
                                $a12 = min($hargasedang, $jumlahrtinggi, $reviewpjelek); //tidakbeli game
                                $z12 = 50 - $a12 * (50 - 30);
                                //
                                $a13 = min($hargatinggi, $jumlahrrendah, $reviewpbaik); //beli game
                                $z13 =  $a13 * (100 - 70) + 50;
                                $a14 = min($hargatinggi, $jumlahrrendah, $reviewpjelek); //tidakbeli game
                                $z14 =  50 - $a13 * (50 - 30);
                                $a15 = min($hargatinggi, $jumlahrsedang, $reviewpbaik); //beli game
                                $z15 =  $a15 * (100 - 70) + 50;
                                $a16 = min($hargatinggi, $jumlahrsedang, $reviewpjelek); //tidakbeli game
                                $z16 =  50 - $a16 * (50 - 30);
                                $a17 = min($hargatinggi, $jumlahrtinggi, $reviewpbaik); //beli game
                                $z17 =  $a17 * (100 - 70) + 50;
                                $a18 = min($hargatinggi, $jumlahrtinggi, $reviewpjelek); //tidakbeli game
                                $z18 =  50 - $a18 * (50 - 30);

                                $total_AiZi = ($a1 * $z1) + ($a2 * $z2) + ($a3 * $z3) + ($a4 * $z4) + ($a5 * $z5) + ($a6 * $z6) + ($a7 * $z7) + ($a8 * $z8) + ($a9 * $z9) + ($a10 * $z10) + ($a11 * $z11) + ($a12 * $z12) + ($a13 * $z13) + ($a14 * $z14) + ($a15 * $z15) + ($a16 * $z16) + ($a17 * $z17) + ($a18 * $z18);

                                $total_a = $a1 + $a2 + $a3 + $a4 + $a5 + $a6 + $a7 + $a8 + $a9 + $a10 + $a11 + $a12 + $a13 + $a14 + $a15 + $a16 + $a17 + $a18;

                                $z = round($total_AiZi, 2) / round($total_a, 2);

                                $result = round($z, 2);

                                if ($result > 70) {
                                    $saran = "Beli";
                                } else if ($result < 70 && $result > 60) {
                                    $saran = "Beli saat diskon";
                                } else {
                                    $saran = "Tidak Beli";
                                }
                                ?>

                                <div class="col-lg-3 col-md-4">
                                    <!-- Button trigger modal -->
                                    <a href="" data-bs-toggle="modal" data-bs-target="#<?= $a['idgenre']; ?>">
                                        <div class="card">
                                            <div class="card-body"><?= $a['nama__game']; ?>, <?= $a['genre']; ?>, Rp <?= number_format($a['harga'], 0, ",", "."); ?></div>
                                        </div>
                                    </a>
                                    <!-- Modal -->

                                    <div class="modal fade" id="<?= $a['idgenre']; ?>" tabindex="-1" aria-labelledby="ACTIONModalLabel" aria-hidden="true">
                                        <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h1 class="modal-title fs-5" id="exampleModalLabel">
                                                        <?= $a['nama__game']; ?>
                                                    </h1>
                                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                </div>

                                                <div class="modal-body">
                                                    <div class="row">
                                                        <div class="col-lg-6">
                                                            <h6>Minimum Spesifikasi :</h6>
                                                            <ul>
                                                                <li>
                                                                    Processor :
                                                                    <strong>
                                                                        <?= $a['processor']; ?></strong>
                                                                </li>
                                                                <li>
                                                                    Memory :
                                                                    <strong><?= $a['ram']; ?></strong>
                                                                </li>
                                                                <li>
                                                                    Graphic :
                                                                    <strong>
                                                                        <?= $a['gpu']; ?>
                                                                    </strong>
                                                                </li>
                                                                <li>
                                                                    Storage :
                                                                    <strong><?= $a['storage_game']; ?></strong>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                        <div class="col-lg-6">
                                                            <h6>Harga dan Review :</h6>
                                                            <ul>
                                                                <li>
                                                                    Harga :
                                                                    <strong>Rp <?= number_format($a['harga'], 0, ",", "."); ?></strong>
                                                                </li>
                                                                <li>
                                                                    Review Positif :
                                                                    <strong><?= number_format($a['reviewp'], 0, ",", "."); ?></strong>
                                                                </li>
                                                                <li>
                                                                    Review Negatif :
                                                                    <strong><?= number_format($a['reviewn'], 0, ",", "."); ?></strong>
                                                                </li>
                                                                <li>
                                                                    Jumlah Review :
                                                                    <strong><?= number_format($a['jumlah_review'], 0, ",", "."); ?></strong>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-lg-6">
                                                            <h6>Genre :</h6>
                                                            <p>
                                                                <strong><?= $a['genre']; ?></strong>
                                                            </p>
                                                        </div>
                                                        <div class="col-lg-6">
                                                            <h6>Rekomendasi :</h6>
                                                            <p>
                                                                <strong><?= $saran; ?></strong>
                                                            </p>
                                                        </div>
                                                        <div class="col-lg-6">
                                                            <h6>Hasil Hitungan Fuzzy :</h6>
                                                            <p>
                                                                <strong><?= $z; ?></strong>
                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            <?php endforeach; ?>
                        </div>
                        <!-- Akhir Row -->
                    </div>
                    <!-- Akhir Action Game -->

                    <!-- ADVENTURE Game -->
                    <div class="tab-pane fade" id="adventure-tab-pane" role="tabpanel" aria-labelledby="adventure-tab" tabindex="0">
                        <!-- <p>ADVENTURE GAME...</p> -->

                        <!-- Awal Row -->
                        <div class="row">
                            <?php foreach ($adventure as $key => $ad) : ?>
                                <div class="col-lg-3 col-md-4">
                                    <!-- Button trigger modal -->
                                    <a href="" data-bs-toggle="modal" data-bs-target="#<?= $ad['idgenre']; ?>">
                                        <div class="card">
                                            <div class="card-body"><?= $ad['nama__game']; ?>, <?= $ad['genre']; ?>, Rp <?= number_format($ad['harga'], 0, ",", "."); ?></div>
                                        </div>
                                    </a>

                                    <!-- Modal -->
                                    <div class="modal fade" id="<?= $ad['idgenre']; ?>" tabindex="-1" aria-labelledby="ADVENTUREModalLabel" aria-hidden="true">
                                        <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h1 class="modal-title fs-5" id="exampleModalLabel">
                                                        <?= $ad['nama__game']; ?>
                                                    </h1>
                                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                </div>

                                                <div class="modal-body">
                                                    <div class="row">
                                                        <div class="col-lg-6">
                                                            <h6>Minimum Spesifikasi :</h6>
                                                            <ul>
                                                                <li>
                                                                    Processor :
                                                                    <strong>
                                                                        <?= $ad['processor']; ?></strong>
                                                                </li>
                                                                <li>
                                                                    Memory :
                                                                    <strong><?= $ad['ram']; ?></strong>
                                                                </li>
                                                                <li>
                                                                    Graphic :
                                                                    <strong>
                                                                        <?= $ad['gpu']; ?>
                                                                    </strong>
                                                                </li>
                                                                <li>
                                                                    Storage :
                                                                    <strong><?= $ad['storage_game']; ?></strong>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                        <div class="col-lg-6">
                                                            <h6>Harga dan Review :</h6>
                                                            <ul>
                                                                <li>
                                                                    Harga :
                                                                    <strong>Rp <?= number_format($ad['harga'], 0, ",", "."); ?></strong>
                                                                </li>
                                                                <li>
                                                                    Review Positif :
                                                                    <strong><?= number_format($ad['reviewp'], 0, ",", "."); ?></strong>
                                                                </li>
                                                                <li>
                                                                    Review Negatif :
                                                                    <strong><?= number_format($ad['reviewn'], 0, ",", "."); ?></strong>
                                                                </li>
                                                                <li>
                                                                    Jumlah Review :
                                                                    <strong><?= number_format($ad['jumlah_review'], 0, ",", "."); ?></strong>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-lg-6">
                                                            <h6>Genre :</h6>
                                                            <p>
                                                                <strong><?= $ad['genre']; ?></strong>
                                                            </p>
                                                        </div>
                                                        <div class="col-lg-6">
                                                            <h6>Rekomendasi :</h6>
                                                            <p>
                                                                <strong><?= $saran; ?></strong>
                                                            </p>
                                                        </div>
                                                        <div class="col-lg-6">
                                                            <h6>Hasil Hitung Fuzzy :</h6>
                                                            <p>
                                                                <strong><?= $z; ?></strong>
                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            <?php endforeach; ?>
                        </div>
                        <!-- Akhir Row -->
                    </div>
                    <!-- Akhir ADVENTURE Game -->

                    <!-- RACING Game -->
                    <div class="tab-pane fade" id="racing-tab-pane" role="tabpanel" aria-labelledby="racing-tab" tabindex="0">
                        <!-- <p>RACING GAME...</p> -->

                        <!-- Awal Row -->
                        <div class="row">
                            <?php foreach ($racing as $key => $r) : ?>
                                <div class="col-lg-3 col-md-4">
                                    <!-- Button trigger modal -->
                                    <a href="" data-bs-toggle="modal" data-bs-target="#<?= $r['idgenre']; ?>">
                                        <div class="card">
                                            <div class="card-body"><?= $r['nama__game']; ?>, <?= $r['genre']; ?>, Rp <?= number_format($r['harga'], 0, ",", "."); ?></div>
                                        </div>
                                    </a>

                                    <!-- Modal -->
                                    <div class="modal fade" id="<?= $r['idgenre']; ?>" tabindex="-1" aria-labelledby="RACINGModalLabel" aria-hidden="true">
                                        <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h1 class="modal-title fs-5" id="exampleModalLabel">
                                                        <?= $r['nama__game']; ?>
                                                    </h1>
                                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                </div>

                                                <div class="modal-body">
                                                    <div class="row">
                                                        <div class="col-lg-6">
                                                            <h6>Minimum Spesifikasi :</h6>
                                                            <ul>
                                                                <li>
                                                                    Processor :
                                                                    <strong>
                                                                        <?= $r['processor']; ?></strong>
                                                                </li>
                                                                <li>
                                                                    Memory :
                                                                    <strong><?= $r['ram']; ?></strong>
                                                                </li>
                                                                <li>
                                                                    Graphic :
                                                                    <strong>
                                                                        <?= $r['gpu']; ?>
                                                                    </strong>
                                                                </li>
                                                                <li>
                                                                    Storage :
                                                                    <strong><?= $r['storage_game']; ?></strong>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                        <div class="col-lg-6">
                                                            <h6>Harga dan Review :</h6>
                                                            <ul>
                                                                <li>
                                                                    Harga :
                                                                    <strong>Rp <?= number_format($r['harga'], 0, ",", "."); ?></strong>
                                                                </li>
                                                                <li>
                                                                    Review Positif :
                                                                    <strong><?= number_format($r['reviewp'], 0, ",", "."); ?></strong>
                                                                </li>
                                                                <li>
                                                                    Review Negatif :
                                                                    <strong><?= number_format($r['reviewn'], 0, ",", "."); ?></strong>
                                                                </li>
                                                                <li>
                                                                    Jumlah Review :
                                                                    <strong><?= number_format($r['jumlah_review'], 0, ",", "."); ?></strong>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-lg-6">
                                                            <h6>Genre :</h6>
                                                            <p>
                                                                <strong><?= $r['genre']; ?></strong>
                                                            </p>
                                                        </div>
                                                        <div class="col-lg-6">
                                                            <h6>Rekomendasi :</h6>
                                                            <p>
                                                                <strong><?= $saran; ?></strong>
                                                            </p>
                                                        </div>
                                                        <div class="col-lg-6">
                                                            <h6>Hasil Hitungan Fuzzy :</h6>
                                                            <p>
                                                                <strong><?= $z; ?></strong>
                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            <?php endforeach; ?>
                        </div>
                        <!-- Akhir Row -->
                    </div>
                    <!-- Akhir RACING Game -->

                    <!-- SIMULATION Game -->
                    <div class="tab-pane fade" id="simulation-tab-pane" role="tabpanel" aria-labelledby="simulation-tab" tabindex="0">
                        <!-- <p>SIMULATION GAME...</p> -->

                        <!-- Awal Row -->
                        <div class="row">
                            <?php foreach ($simulation as $key => $sim) : ?>
                                <div class="col-lg-3 col-md-4">
                                    <!-- Button trigger modal -->
                                    <a href="" data-bs-toggle="modal" data-bs-target="#<?= $sim['idgenre']; ?>">
                                        <div class="card">
                                            <div class="card-body"><?= $sim['nama__game']; ?>, <?= $sim['genre']; ?>, Rp <?= number_format($sim['harga'], 0, ",", "."); ?></div>
                                        </div>
                                    </a>

                                    <!-- Modal -->
                                    <div class="modal fade" id="<?= $sim['idgenre']; ?>" tabindex="-1" aria-labelledby="SIMULATIONModalLabel" aria-hidden="true">
                                        <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h1 class="modal-title fs-5" id="exampleModalLabel">
                                                        <?= $sim['nama__game']; ?>
                                                    </h1>
                                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                </div>

                                                <div class="modal-body">
                                                    <div class="row">
                                                        <div class="col-lg-6">
                                                            <h6>Minimum Spesifikasi :</h6>
                                                            <ul>
                                                                <li>
                                                                    Processor :
                                                                    <strong>
                                                                        <?= $sim['processor']; ?></strong>
                                                                </li>
                                                                <li>
                                                                    Memory :
                                                                    <strong><?= $sim['ram']; ?></strong>
                                                                </li>
                                                                <li>
                                                                    Graphic :
                                                                    <strong>
                                                                        <?= $sim['gpu']; ?>
                                                                    </strong>
                                                                </li>
                                                                <li>
                                                                    Storage :
                                                                    <strong><?= $sim['storage_game']; ?></strong>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                        <div class="col-lg-6">
                                                            <h6>Harga dan Review :</h6>
                                                            <ul>
                                                                <li>
                                                                    Harga :
                                                                    <strong>Rp <?= number_format($sim['harga'], 0, ",", "."); ?></strong>
                                                                </li>
                                                                <li>
                                                                    Review Positif :
                                                                    <strong><?= number_format($sim['reviewp'], 0, ",", "."); ?></strong>
                                                                </li>
                                                                <li>
                                                                    Review Negatif :
                                                                    <strong><?= number_format($sim['reviewn'], 0, ",", "."); ?></strong>
                                                                </li>
                                                                <li>
                                                                    Jumlah Review :
                                                                    <strong><?= number_format($sim['jumlah_review'], 0, ",", "."); ?></strong>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-lg-6">
                                                            <h6>Genre :</h6>
                                                            <p>
                                                                <strong><?= $sim['genre']; ?></strong>
                                                            </p>
                                                        </div>
                                                        <div class="col-lg-6">
                                                            <h6>Rekomendasi :</h6>
                                                            <p>
                                                                <strong><?= $saran; ?></strong>
                                                            </p>
                                                        </div>
                                                        <div class="col-lg-6">
                                                            <h6>Hasil Hitung Fuzzy :</h6>
                                                            <p>
                                                                <strong><?= $z; ?></strong>
                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            <?php endforeach; ?>
                        </div>
                        <!-- Akhir Row -->
                    </div>
                    <!-- Akhir SIMULATION Game -->

                    <!-- SPORTS Game -->
                    <div class="tab-pane fade" id="sports-tab-pane" role="tabpanel" aria-labelledby="sports-tab" tabindex="0">
                        <!-- <p>SPORTS GAME...</p> -->

                        <!-- Awal Row -->
                        <div class="row">
                            <?php foreach ($sports as $key => $sp) : ?>
                                <div class="col-lg-3 col-md-4">
                                    <!-- Button trigger modal -->
                                    <a href="" data-bs-toggle="modal" data-bs-target="#<?= $sp['idgenre']; ?>">
                                        <div class="card">
                                            <div class="card-body"><?= $sp['nama__game']; ?>, <?= $sp['genre']; ?>, Rp <?= number_format($sp['harga'], 0, ",", "."); ?></div>
                                        </div>

                                    </a>

                                    <!-- Modal -->
                                    <div class="modal fade" id="<?= $sp['idgenre']; ?>" tabindex="-1" aria-labelledby="SPORTSModalLabel" aria-hidden="true">
                                        <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h1 class="modal-title fs-5" id="exampleModalLabel">
                                                        <?= $sp['nama__game']; ?>
                                                    </h1>
                                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                </div>

                                                <div class="modal-body">
                                                    <div class="row">
                                                        <div class="col-lg-6">
                                                            <h6>Minimum Spesifikasi :</h6>
                                                            <ul>
                                                                <li>
                                                                    Processor :
                                                                    <strong>
                                                                        <?= $sp['processor']; ?></strong>
                                                                </li>
                                                                <li>
                                                                    Memory :
                                                                    <strong><?= $sp['ram']; ?></strong>
                                                                </li>
                                                                <li>
                                                                    Graphic :
                                                                    <strong>
                                                                        <?= $sp['gpu']; ?>
                                                                    </strong>
                                                                </li>
                                                                <li>
                                                                    Storage :
                                                                    <strong><?= $sp['storage_game']; ?></strong>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                        <div class="col-lg-6">
                                                            <h6>Harga dan Review :</h6>
                                                            <ul>
                                                                <li>
                                                                    Harga :
                                                                    <strong>Rp <?= number_format($sp['harga'], 0, ",", "."); ?></strong>
                                                                </li>
                                                                <li>
                                                                    Review Positif :
                                                                    <strong><?= number_format($sp['reviewp'], 0, ",", "."); ?></strong>
                                                                </li>
                                                                <li>
                                                                    Review Negatif :
                                                                    <strong><?= number_format($sp['reviewn'], 0, ",", "."); ?></strong>
                                                                </li>
                                                                <li>
                                                                    Jumlah Review :
                                                                    <strong><?= number_format($sp['jumlah_review'], 0, ",", "."); ?></strong>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-lg-6">
                                                            <h6>Genre :</h6>
                                                            <p>
                                                                <strong><?= $sp['genre']; ?></strong>
                                                            </p>
                                                        </div>
                                                        <div class="col-lg-6">
                                                            <h6>Rekomendasi :</h6>
                                                            <p>
                                                                <strong><?= $saran; ?></strong>
                                                            </p>
                                                        </div>
                                                        <div class="col-lg-6">
                                                            <h6>Hasil Hitungan Fuzzy :</h6>
                                                            <p>
                                                                <strong><?= $z; ?></strong>
                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            <?php endforeach; ?>

                        </div>
                        <!-- Akhir Row -->
                    </div>
                    <!-- Akhir SPORTS Game -->
                </div>
                <!-- Akhir Isi Menu Tabs -->
            </div>
        </div>
    </div>
    <!-- Main -->

    <?= $this->endSection(); ?>
<footer id="footer">

<div class="footer-newsletter">
    <div class="row justify-content-center">
        <div class="form-group col-md-6 center">
            <h4>Kritik dan saran kami harapkan!</h4>
                <form action="<?php echo base_url() . 'gabung/inbox' ?>" method="post">
                <!-- <input type="text" name="nama" placeholder="insert your name" maxlength="100">  
                <textarea name="inbox" class="form-control" id="exampleFormControlTextarea3" rows="7" class="mt-3"></textarea>
                <button type="submit" class="btn btn-primary mt-3" >Submit</button> -->
                <div class="form-group">
                        <input type="text" name="nama" id="fullname" class="form-control" placeholder="insert your name">
                    </div>
                <div class="form-group">
                        <textarea name="inbox" id="" msg cols="30" rows="5" class="form-control mt-2"></textarea>
                </div>
                <div class="form-group">
                <button type="submit" class="btn btn-primary mt-2" >Submit</button>
                </div>
                </form>
        </div>
    </div>
</div>
        <!-- <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-6">
                    <h4>Dapatkan Informasi Terbaru Kami</h4>
                    <form action="<?= site_url('subscribe'); ?>" method="post">
                        <input type="hidden" name="url" value="<?php echo site_url(); ?>" required>
                        <input type="email" name="email" placeholder="insert your email">
                        <input type="submit" value="Subscribe">
                    </form>
                </div> -->
                <!-- <div class="alert alert-warning alert-dismissible fade show" role="alert">
                    <strong>Halo Sahabat!</strong> <?php echo $this->session->flashdata('message'); ?>
                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                </div> -->
            </div>
        </div>
    </div>

    <div class="footer-top">
        <div class="container">
            <div class="row">
                

                <div class="col-lg-6 col-md-6 footer-contact text-center">
                    <h3>PMII TEKNIK <span>UNINUS</span></h3>
                    <p>
                        Jl. Binong Jati No. 200, Kec. Batununggal, Kota Bandung
                        <br><strong>Phone:</strong> <?= $site_wa; ?><br>
                        <strong>Email:</strong> <?= $site_mail; ?><br>
                    </p>
                </div>

                <!-- <div class="col-lg-3 col-md-6 footer-links">
                    <h4>Useful Links</h4>
                    <ul>
                        <li><i class="bx bx-chevron-right"></i> <a href="#">Home</a></li>
                        <li><i class="bx bx-chevron-right"></i> <a href="#">About</a></li>
                        <li><i class="bx bx-chevron-right"></i> <a href="#">Gallery</a></li>
                        <li><i class="bx bx-chevron-right"></i> <a href="#">Team</a></li>
                    </ul>
                </div> -->

                <!-- <div class="col-lg-3 col-md-6 footer-links">
                    <h4>Our Information</h4>
                    <ul>
                        <li><i class="bx bx-chevron-right"></i> <a href="#">News</a></li>
                        <li><i class="bx bx-chevron-right"></i> <a href="#">Opinion</a></li>
                        <li><i class="bx bx-chevron-right"></i> <a href="#">History</a></li>
                        <li><i class="bx bx-chevron-right"></i> <a href="#">Propaganda</a></li>
                    </ul>
                </div> -->

                <div class="col-lg-6 col-md-6 footer-links text-center">
                    <h4>Our Social Networks</h4>
                    <p>Sosial Media <?= $site_title; ?></p>
                    <div class="social-links mt-3">
                        <a href="<?= $site_ig; ?>" class="instagram"><i class="bx bxl-instagram"></i></a>
                        <a href="<?= $site_fb; ?>" class="facebook"><i class="bx bxl-facebook"></i></a>
                        <a href="<?= $site_twit; ?>" class="twitter"><i class="bx bxl-twitter"></i></a>
                        <a href="<?= $site_linked; ?>" class="linkedin"><i class="bx bxl-linkedin"></i></a>
                    </div>
                </div>

            </div>
        </div>
    </div>

    <div class="container py-4">
        <div class="copyright">
            &copy; <strong><span>pmiiteknik_uninus</span></strong> <?= date('Y'); ?>
        </div>
        <div class="credits">
            Designed by <a class="fst-italic">Biro Media Rayon Teknik</a>
        </div>
    </div>
</footer>

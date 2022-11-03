<!DOCTYPE html>
<html lang="en">

<head>
<meta content="<?= $site_desc; ?>" name="description">
    <meta content="" name="keywords">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">  <!-- tampilan responsive (desktop == mobile screen) == github perbaikan form(berhasil) -->

    <!-- Favicons -->
    <link href="<?= base_url() ?>assets/frontend/img/favicon.png" rel="icon">
    <link href="<?= base_url() ?>assets/frontend/img/apple-touch-icon.png" rel="apple-touch-icon">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Roboto:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="<?= base_url() ?>assets/frontend/vendor/aos/aos.css" rel="stylesheet">
    <link href="<?= base_url() ?>assets/frontend/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="<?= base_url() ?>assets/frontend/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="<?= base_url() ?>assets/frontend/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
    <link href="<?= base_url() ?>assets/frontend/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
    <link href="<?= base_url() ?>assets/frontend/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
    <link href="<?php echo base_url() . 'assets/backend/plugins/toastr/jquery.toast.min.css' ?>" rel="stylesheet" type="text/css" />

    <!-- Template Main CSS File -->
    <link href="<?= base_url() ?>assets/frontend/css/style.css" rel="stylesheet">

</head>
<style>
    @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;700;900&display=swap');

*, body {
    font-family: 'Poppins', sans-serif;
    font-weight: 400;
    -webkit-font-smoothing: antialiased;
    text-rendering: optimizeLegibility;
    -moz-osx-font-smoothing: grayscale;
}

html, body {
    height: 100%;
    background-color: #fff;
    overflow: hidden;
}


.form-holder {
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
      text-align: center;
      min-height: 100vh;
}

.form-holder .form-content {
    position: relative;
    text-align: center;
    display: -webkit-box;
    display: -moz-box;
    display: -ms-flexbox;
    display: -webkit-flex;
    display: flex;
    -webkit-justify-content: center;
    justify-content: center;
    -webkit-align-items: center;
    align-items: center;
    padding: 60px;
}

.form-content .form-items {
    border: 3px solid #106eea;
    padding: 40px;
    display: inline-block;
    width: 100%;
    min-width: 540px;
    -webkit-border-radius: 10px;
    -moz-border-radius: 10px;
    border-radius: 10px;
    text-align: left;
    -webkit-transition: all 0.4s ease;
    transition: all 0.4s ease;
}

.form-content h3 {
    color: #106eea;
    text-align: center;
    font-size: 28px;
    font-weight: 600;
    margin-bottom: 5px;
}

.form-content h3.form-title {
    margin-bottom: 30px;
}

.form-content p {
    color: #106eea;
    text-align: center;
    font-size: 17px;
    font-weight: 300;
    line-height: 20px;
    margin-bottom: 30px;
}


.form-content label, .was-validated .form-check-input:invalid~.form-check-label, .was-validated .form-check-input:valid~.form-check-label{
    color: #106eea;
}

.form-content input[type=text], .form-content input[type=password], .form-content input[type=email], .form-content select {
    width: 100%;
    padding: 9px 20px;
    text-align: left;
    border: 0;
    outline: 0;
    border-radius: 6px;
    background-color: #fff;
    font-size: 15px;
    font-weight: 300;
    color: #8D8D8D;
    -webkit-transition: all 0.3s ease;
    transition: all 0.3s ease;
    margin-top: 16px;
}


.btn-primary{
    background-color: #106eea;
    outline: none;
    border: 0px;
     box-shadow: none;
}

.btn-primary:hover, .btn-primary:focus, .btn-primary:active{
    background-color: #106eea;
    outline: none !important;
    border: none !important;
     box-shadow: none;
}

.form-content textarea {
    position: static !important;
    width: 100%;
    padding: 8px 20px;
    border-radius: 6px;
    text-align: left;
    background-color: #fff;
    border: 0;
    font-size: 15px;
    font-weight: 300;
    color: #8D8D8D;
    outline: none;
    resize: none;
    height: 120px;
    -webkit-transition: none;
    transition: none;
    margin-bottom: 14px;
}

.form-content textarea:hover, .form-content textarea:focus {
    border: 0;
    background-color: #ebeff8;
    color: #106eea;
}

.mv-up{
    margin-top: -9px !important;
    margin-bottom: 8px !important;
}

.invalid-feedback{
    color: #ff606e;
}

.valid-feedback{
   color: #2acc80;
}

/* RESPOSIVE */
@media screen and (min-width: 0px){
.form-content .form-items {
    min-width: 335px;
    
}
}
@media only screen and (min-width: 375px){
.form-content .form-items {
    min-width: 335px;
}
.form-content h3 {
    color: black;
}
}
@media (min-Width: 530px){
.form-content .form-items {
  min-width: 400px;
  padding: 40px;
}
.form-content p {
    margin-bottom: 100px;
}
}
@media screen and (min-width: 840px){
.form-content .form-items {
    min-width: 640px;
}
}

</style>
<body>
<div class="form-body">
        <div class="row">
            <div class="form-holder">
                <div class="form-content">
                    <div class="form-items">
                        <h3>Daftar Sekarang</h3>
                        <p>Isi data di bawah ini.</p>
                        <form id="filter_data" action="<?php echo base_url() . 'gabung/input' ?>" method="post" class="requires-validation"  novalidate >

                            <div class="col-md-12">
                               <input class="form-control" type="text" name="nama" placeholder="Nama Lengkap" required>
                               <div class="valid-feedback">Nama Lengkap valid!</div>
                               <div class="invalid-feedback">Nama Lengkap tidak boleh kosong!</div>
                            </div>

                            <div class="col-md-12">
                                <select name="fakultas" class="form-select mt-3" required>
                                      <option selected disabled value="">Fakultas</option>
                                      <option value="Teknik">Teknik</option>
                                      <option value="Agama Islam">Agama Islam</option>
                                      <option value="Hukum">Hukum</option>
                                      <option value="Ilmu Komunikasi">Ilmu Komunikasi</option>
                                      <option value="Keguruan dan Ilmu Pendidikan">Keguruan dan Ilmu Pendidikan</option>
                                      <option value="Ekonomi">Ekonomi</option>
                                      <option value="Pertanian">Pertanian</option>
                               </select>
                                <div class="valid-feedback">Fakultas telah terpilih.</div>
                                <div class="invalid-feedback">Fakultas tidak boleh kosong!</div>
                           </div>

                            <div class="col-md-12">
                                <select name="jk" class="form-select mt-3" required>
                                      <option selected disabled value="">Jenis Kelamin</option>
                                      <option value="Laki-Laki">Laki-Laki</option>
                                      <option value="Perempuan">Perempuan</option>
                               </select>
                                <div class="valid-feedback">Jenis kelamin terpilih.</div>
                                <div class="invalid-feedback">Jenis Kelamin tidak boleh kosong!</div>
                           </div>

                            <div class="col-md-12">
                               <input class="form-control" type="text" name="alamat" placeholder="Alamat" required>
                               <div class="valid-feedback">Alamat telah terisi.</div>
                               <div class="invalid-feedback">Alamat tidak boleh kosong!</div>
                            </div>

                            <div class="col-md-12">
                               <input class="form-control" type="text" name="no_hp" placeholder="No. HP" required>
                               <div class="valid-feedback">No. HP telah terisi.</div>
                               <div class="invalid-feedback">No. Hp tidak boleh kosong!</div>
                            </div>

                            <div class="col-md-12">
                                <select name="status" class="form-select mt-3" required>
                                      <option >Status</option>
                                      <option value="aktif">Aktif</option>
                                      <option value="baru">Baru</option>
                               </select>
                                <div class="valid-feedback">Status terpilih.</div>
                                <div class="invalid-feedback">Status tidak boleh kosong!</div>
                           </div>
                          
                            <div class="form-button mt-3">
                                <button  class="btn btn-primary">Daftar</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="<?php echo base_url() . 'assets/backend/plugins/jquery/jquery-2.1.4.min.js' ?>"></script>
<!-- <script src="<?php echo base_url() . 'assets/backend/plugins/toastr/jquery.toast.min.js' ?>"></script> -->
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script>
    (function () {
'use strict'
const forms = document.querySelectorAll('.requires-validation')
Array.from(forms)
  .forEach(function (form) {
    form.addEventListener('submit', function (event) {
      if (!form.checkValidity()) {
        event.preventDefault()
        event.stopPropagation()
      }

      form.classList.add('was-validated')
    }, false)
  })
})()

    </script>
 <!--Toast Message-->
 <?php if ($this->session->flashdata('msg') == 'success') : ?>
        <script type="text/javascript">
            Swal.fire({
  icon: 'success',
  title: 'Selamat anda berhasil daftar',
  text: 'Silahkan klik link dibawah ini untuk gabung group',
  footer: '<a href="https://chat.whatsapp.com/K9IkQbi1EEWEaYNNdnSApm">Link</a>'
})
        </script>
    <?php elseif ($this->session->flashdata('msg') == 'info') : ?>
        <script type="text/javascript">
            $.toast({
                heading: 'Info',
                text: "Post Updated!",
                showHideTransition: 'slide',
                icon: 'info',
                hideAfter: false,
                position: 'bottom-right',
                bgColor: '#00C9E6'
            });
        </script>
    <?php elseif ($this->session->flashdata('msg') == 'success-delete') : ?>
        <script type="text/javascript">
            $.toast({
                heading: 'Success',
                text: "Post Deleted!.",
                showHideTransition: 'slide',
                icon: 'success',
                hideAfter: false,
                position: 'bottom-right',
                bgColor: '#7EC857'
            });
        </script>
    <?php else : ?>

    <?php endif; ?>

</body>


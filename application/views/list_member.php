<!DOCTYPE html>
<html>

<head>
    <!-- Title -->
    <title>New Members</title>

    <meta content="width=device-width, initial-scale=1" name="viewport" />
    <meta charset="UTF-8">
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <meta name="author" content="" />
    <link rel="shortcut icon" href="<?php echo base_url() . 'assets/frontend/img/apple-touch-icon.png' ?>">

    <!-- Styles -->
    <link href="<?php echo base_url() . 'assets/backend/plugins/pace-master/themes/blue/pace-theme-flash.css' ?>" rel="stylesheet" />
    <link href="<?php echo base_url() . 'assets/backend/plugins/uniform/css/uniform.default.min.css' ?>" rel="stylesheet" />
    <link href="<?php echo base_url() . 'assets/backend/plugins/bootstrap/css/bootstrap.min.css' ?>" rel="stylesheet" type="text/css" />
    <link href="<?php echo base_url() . 'assets/backend/plugins/fontawesome/css/font-awesome.css' ?>" rel="stylesheet" type="text/css" />
    <link href="<?php echo base_url() . 'assets/backend/plugins/line-icons/simple-line-icons.css' ?>" rel="stylesheet" type="text/css" />
    <link href="<?php echo base_url() . 'assets/backend/plugins/offcanvasmenueffects/css/menu_cornerbox.css' ?>" rel="stylesheet" type="text/css" />
    <link href="<?php echo base_url() . 'assets/backend/plugins/waves/waves.min.css' ?>" rel="stylesheet" type="text/css" />
    <link href="<?php echo base_url() . 'assets/backend/plugins/switchery/switchery.min.css' ?>" rel="stylesheet" type="text/css" />
    <link href="<?php echo base_url() . 'assets/backend/plugins/3d-bold-navigation/css/style.css' ?>" rel="stylesheet" type="text/css" />
    <link href="<?php echo base_url() . 'assets/backend/plugins/slidepushmenus/css/component.css' ?>" rel="stylesheet" type="text/css" />
    <link href="<?php echo base_url() . 'assets/backend/plugins/datatables/css/jquery.datatables.min.css' ?>" rel="stylesheet" type="text/css" />
    <link href="<?php echo base_url() . 'assets/backend/plugins/datatables/css/jquery.datatables_themeroller.css' ?>" rel="stylesheet" type="text/css" />
    <link href="<?php echo base_url() . 'assets/backend/plugins/toastr/jquery.toast.min.css' ?>" rel="stylesheet" type="text/css" />
    <!-- Theme Styles -->
    <link href="<?php echo base_url() . 'assets/backend/css/modern.min.css' ?>" rel="stylesheet" type="text/css" />
    <link href="<?php echo base_url() . 'assets/backend/css/themes/dark.css' ?>" class="theme-color" rel="stylesheet" type="text/css" />
    <link href="<?php echo base_url() . 'assets/backend/css/custom.css' ?>" rel="stylesheet" type="text/css" />

    <script src="<?php echo base_url() . 'assets/backend/plugins/3d-bold-navigation/js/modernizr.js' ?>"></script>
    <script src="<?php echo base_url() . 'assets/backend/plugins/offcanvasmenueffects/js/snap.svg-min.js' ?>"></script>


</head>

<body class="page-header-fixed compact-menu pace-done page-sidebar-fixed">
    <div class="overlay"></div>
    <main class="page-content content-wrap">

                <!-- <div class="page-inner"> -->
            <div class="page-title">
                <h3>Database kader</h3>
            </div>
            <div id="main-wrapper">
                <div class="row">
                    <div class="col-md-12">

                        <div class="panel panel-white">
                            <div class="panel-body">
                                <!-- <a href="<?php echo site_url('backend/post/add_new'); ?>" class="btn btn-success m-b-sm">Add New Post</a> -->

                                <div class="table-responsive">
                                    <table id="data-table" class="display table" style="width: 100%; ">
                                        <thead>
                                            <tr>
                                                <th style="width: 100px;">No</th>
                                                <th>Nama</th>
                                                <th>Fakultas</th>
                                                <th>Alamat</th>
                                                <th>JK</th>
                                                <!-- <th style="text-align: center;width: 120px;">Action</th> -->
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php
                                            $no = 0;
                                            foreach ($data->result() as $row) :
                                                $no++;
                                            ?>
                                                <tr>
                                                    <td><?php echo $no; ?></td>
                                                    <td><?php echo $row->nama; ?></td>
                                                    <td><?php echo $row->fakultas; ?></td>
                                                    <td><?php echo $row->alamat; ?></td>
                                                    <td><?php echo $row->jenis_kelamin; ?></td>
                                                    <!-- <td><?php echo $row->created_at; ?></td> -->
                                                 
                                                </tr>
                                            <?php endforeach; ?>
                                        </tbody>

                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div><!-- Row -->
            </div><!-- Main Wrapper -->
            <div class="page-footer">
                <p class="no-s"><?php echo date('Y'); ?> &copy; Powered by Biro Media Teknik.</p>
            </div>
        </div><!-- Page Inner -->
    </main><!-- Page Content -->

    <!--DELETE RECORD MODAL-->
    <form action="<?php echo site_url('backend/post/delete'); ?>" method="post">
        <div class="modal fade" id="DeleteModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel">Delete Post</h4>
                    </div>
                    <div class="modal-body">
                        <div class="alert alert-info">
                            Anda yakin mau menghapus post ini?
                        </div>
                    </div>
                    <div class="modal-footer">
                        <input type="hidden" name="id" required>
                        <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                        <button type="submit" class="btn btn-success">Delete</button>
                    </div>
                </div>
            </div>
        </div>
    </form>

    <!-- Javascripts -->
    <script src="<?php echo base_url() . 'assets/backend/plugins/jquery/jquery-2.1.4.min.js' ?>"></script>
    <script src="<?php echo base_url() . 'assets/backend/plugins/jquery-ui/jquery-ui.min.js' ?>"></script>
    <script src="<?php echo base_url() . 'assets/backend/plugins/pace-master/pace.min.js' ?>"></script>
    <script src="<?php echo base_url() . 'assets/backend/plugins/jquery-blockui/jquery.blockui.js' ?>"></script>
    <script src="<?php echo base_url() . 'assets/backend/plugins/bootstrap/js/bootstrap.min.js' ?>"></script>
    <script src="<?php echo base_url() . 'assets/backend/plugins/jquery-slimscroll/jquery.slimscroll.min.js' ?>"></script>
    <script src="<?php echo base_url() . 'assets/backend/plugins/switchery/switchery.min.js' ?>"></script>
    <script src="<?php echo base_url() . 'assets/backend/plugins/uniform/jquery.uniform.min.js' ?>"></script>
    <script src="<?php echo base_url() . 'assets/backend/plugins/offcanvasmenueffects/js/classie.js' ?>"></script>
    <script src="<?php echo base_url() . 'assets/backend/plugins/offcanvasmenueffects/js/main.js' ?>"></script>
    <script src="<?php echo base_url() . 'assets/backend/plugins/waves/waves.min.js' ?>"></script>
    <script src="<?php echo base_url() . 'assets/backend/plugins/3d-bold-navigation/js/main.js' ?>"></script>
    <script src="<?php echo base_url() . 'assets/backend/plugins/jquery-mockjax-master/jquery.mockjax.js' ?>"></script>
    <script src="<?php echo base_url() . 'assets/backend/plugins/moment/moment.js' ?>"></script>
    <script src="<?php echo base_url() . 'assets/backend/plugins/datatables/js/jquery.datatables.min.js' ?>"></script>
    <script src="<?php echo base_url() . 'assets/backend/js/modern.min.js' ?>"></script>
    <script src="<?php echo base_url() . 'assets/backend/plugins/toastr/jquery.toast.min.js' ?>"></script>
    <script>
        $(document).ready(function() {
            $('#data-table').dataTable();

            //Delete Record
            $('.btn-delete').on('click', function() {
                var id = $(this).data('id');
                $('[name="id"]').val(id);
                $('#DeleteModal').modal('show');
            });

        });
    </script>

    <!--Toast Message-->
    <?php if ($this->session->flashdata('msg') == 'success') : ?>
        <script type="text/javascript">
            $.toast({
                heading: 'Success',
                text: "Post Saved!",
                showHideTransition: 'slide',
                icon: 'success',
                hideAfter: false,
                position: 'bottom-right',
                bgColor: '#7EC857'
            });
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

</html>
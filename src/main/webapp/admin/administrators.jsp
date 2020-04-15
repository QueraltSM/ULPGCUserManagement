<!DOCTYPE html>
<html lang="en">
<head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
        <title>
            ULPGC User Management</title>

        <!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.png">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">

        <!-- Fontawesome CSS -->
        <link rel="stylesheet" href="assets/css/font-awesome.min.css">

        <!-- Feathericon CSS -->
        <link rel="stylesheet" href="assets/css/feathericon.min.css">

        <!-- Datatables CSS -->
        <link rel="stylesheet" href="assets/plugins/datatables/datatables.min.css">

        <!-- Main CSS -->
        <link rel="stylesheet" href="assets/css/style.css">

        <!--[if lt IE 9]>
                <script src="assets/js/html5shiv.min.js"></script>
                <script src="assets/js/respond.min.js"></script>
        <![endif]-->
    </head>
    <body>

        <!-- Main Wrapper -->
        <div class="main-wrapper">

            <!-- Header -->
            <div class="header">

                <!-- Logo -->
                <div class="header-left">
                    <a href="home.jsp" class="logo">
                        <img src="assets/img/logo.png" alt="Logo">
                    </a>
                    <a href="home.jsp" class="logo logo-small">
                        <img src="assets/img/logo-small.png" alt="Logo" width="30" height="30">
                    </a>
                </div>
                <!-- /Logo -->

                <a href="javascript:void(0);" id="toggle_btn">
                    <i class="fe fe-text-align-left"></i>
                </a>

                <div class="top-nav-search">
                    <form>
                        <input type="text" class="form-control" placeholder="Search here">
                        <button class="btn" type="submit"><i class="fa fa-search"></i></button>
                    </form>
                </div>

                <!-- Mobile Menu Toggle -->
                <a class="mobile_btn" id="mobile_btn">
                    <i class="fa fa-bars"></i>
                </a>
                <!-- /Mobile Menu Toggle -->

                <!-- Header Right Menu -->
                <ul class="nav user-menu">

                    <!-- User Menu -->
                    <li class="nav-item dropdown has-arrow">
                        <a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown">
                            <span class="user-img"><img class="rounded-circle" src="assets/img/profiles/avatar-01.jpg" width="31" alt="Ryan Taylor"></span>
                        </a>
                        <div class="dropdown-menu">
                            <div class="user-header">
                                <div class="avatar avatar-sm">
                                    <img src="assets/img/profiles/avatar-01.jpg" alt="User Image" class="avatar-img rounded-circle">
                                </div>
                                <div class="user-text">
                                    <h6>Ryan Taylor</h6>
                                    <p class="text-muted mb-0">Administrator</p>
                                </div>
                            </div>
                            <a class="dropdown-item" >My Profile</a>
                            <a class="dropdown-item">Settings</a>
                            <a class="dropdown-item" href="../index.jsp">Logout</a>
                        </div>
                    </li>
                    <!-- /User Menu -->

                </ul>
                <!-- /Header Right Menu -->

            </div>
            <!-- /Header -->
            <!-- Sidebar -->
            <div class="sidebar" id="sidebar">
                <div class="sidebar-inner slimscroll">
                    <div id="sidebar-menu" class="sidebar-menu">
                        <ul>
                            <li class="menu-title">
                                <span>Main</span>
                            </li>
                            <li>
                                <a href="home.jsp"><i class="fe fe-home"></i> <span>Dashboard</span></a>
                            </li>
                            <li>
                                <a href="adduser.jsp"><i class="fe fe-user-plus"></i> <span>User</span></a>
                            </li>
                            <li>
                                <a href="teachers.jsp"><i class="fe fe-user"></i> <span>Teachers</span></a>
                            </li>
                            <li>
                                <a href="students.jsp"><i class="fe fe-user"></i> <span>Students</span></a>
                            </li>
                            <li>
                                <a href="administrators.jsp"><i class="fe fe-user"></i> <span>Administrators</span></a>
                            </li>



                        </ul>
                    </div>
                </div>
            </div>
            <!-- /Sidebar -->

            <!-- Page Wrapper -->
            <div class="page-wrapper">
                <div class="content container-fluid">

                    <!-- Page Header -->
                    <div class="page-header">
                        <div class="row">
                            <div class="col-sm-12">
                                <h3 class="page-title">List of Administrators</h3>
                            </div>
                        </div>
                    </div>
                    <!-- /Page Header -->

                    <div class="row">
                        <div class="col-sm-12">
                            <div class="card">
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table class="table table-hover table-center mb-0">
                                            <thead>
                                                <tr>
                                                    <th>DNI/NIE/NIF</th>
                                                    <th>Name</th>
                                                    <th>Phone</th>
                                                    <th>Actions</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>982327811S</td>
                                                    <td>
                                                        <h2 class="table-avatar">
                                                            <a  class="avatar avatar-sm mr-2"><img class="avatar-img rounded-circle" src="assets/img/doctors/doctor-thumb1-01.jpg" alt="User Image"></a>
                                                            <a  id="a_tbnotesverbergen"></a>
                                                        </h2>
                                                    </td>
                                                    <td>611416314</td>
                                                    <td class="text-right">
                                                        <div class="actions">

                                                            <a data-toggle="modal" href="#edit_invoice_report" class="btn btn-sm bg-success-light mr-2" onclick="return fnselect('982327811S', ' Sam Smith', 'Dental', '611416314')">
                                                                <i class="fe fe-pencil"></i> Edit
                                                            </a>
                                                            <a class="btn btn-sm bg-danger-light" data-toggle="modal" href="#delete_modal">
                                                                <i class="fe fe-trash"></i> Delete
                                                            </a>
                                                        </div>
                                                    </td>


                                                </tr>
                                                <tr>
                                                    <td>111697819A</td>
                                                    <td>
                                                        <h2 class="table-avatar">
                                                            <a  class="avatar avatar-sm mr-2"><img class="avatar-img rounded-circle" src="assets/img/doctors/doctor-thumb1-02.jpg" alt="User Image"></a>
                                                            <a >  Felipe Ramos</a>
                                                        </h2>
                                                    </td>
                                                    <td>661226328</td>
                                                    <td class="text-right">
                                                        <div class="actions">

                                                            <a data-toggle="modal" href="#edit_invoice_report" class="btn btn-sm bg-success-light mr-2">
                                                                <i class="fe fe-pencil"></i> Edit
                                                            </a>
                                                            <a class="btn btn-sm bg-danger-light" data-toggle="modal" href="#delete_modal">
                                                                <i class="fe fe-trash"></i> Delete
                                                            </a>
                                                        </div>
                                                    </td>


                                                </tr>
                                                <tr>
                                                    <td>914263812B</td>
                                                    <td>
                                                        <h2 class="table-avatar">
                                                            <a  class="avatar avatar-sm mr-2"><img class="avatar-img rounded-circle" src="assets/img/doctors/doctor-thumb1-03.jpg" alt="User Image"></a>
                                                            <a > Christina Cabello</a>
                                                        </h2>
                                                    </td>
                                                    <td>622264322</td>
                                                    <td class="text-right">
                                                        <div class="actions">

                                                            <a data-toggle="modal" href="#edit_invoice_report" class="btn btn-sm bg-success-light mr-2">
                                                                <i class="fe fe-pencil"></i> Edit
                                                            </a>
                                                            <a class="btn btn-sm bg-danger-light" data-toggle="modal" href="#delete_modal">
                                                                <i class="fe fe-trash"></i> Delete
                                                            </a>
                                                        </div>
                                                    </td>

                                                </tr>
                                                <tr>

                                                    <td>111692612W</td>
                                                    <td>
                                                        <h2 class="table-avatar">
                                                            <a  class="avatar avatar-sm mr-2"><img class="avatar-img rounded-circle" src="assets/img/doctors/doctor-thumb1-04.jpg" alt="User Image"></a>
                                                            <a >  Danna Brown</a>
                                                        </h2>
                                                    </td>
                                                    <td>552436374</td>
                                                    <td class="text-right">
                                                        <div class="actions">

                                                            <a data-toggle="modal" href="#edit_invoice_report" class="btn btn-sm bg-success-light mr-2">
                                                                <i class="fe fe-pencil"></i> Edit
                                                            </a>
                                                            <a class="btn btn-sm bg-danger-light" data-toggle="modal" href="#delete_modal">
                                                                <i class="fe fe-trash"></i> Delete
                                                            </a>
                                                        </div>
                                                    </td>


                                                </tr>
                                                <tr>
                                                    <td>385696811Y</td>
                                                    <td>
                                                        <h2 class="table-avatar">
                                                            <a  class="avatar avatar-sm mr-2"><img class="avatar-img rounded-circle" src="assets/img/doctors/doctor-thumb1-05.jpg" alt="User Image"></a>
                                                            <a > Charles Jones</a>
                                                        </h2>
                                                    </td>
                                                    <td>662298722</td>
                                                    <td class="text-right">
                                                        <div class="actions">

                                                            <a data-toggle="modal" href="#edit_invoice_report" class="btn btn-sm bg-success-light mr-2">
                                                                <i class="fe fe-pencil"></i> Edit
                                                            </a>
                                                            <a class="btn btn-sm bg-danger-light" data-toggle="modal" href="#delete_modal">
                                                                <i class="fe fe-trash"></i> Delete
                                                            </a>
                                                        </div>
                                                    </td>


                                                </tr>
                                                <tr>
                                                    <td>221622812I</td>
                                                    <td>
                                                        <h2 class="table-avatar">
                                                            <a  class="avatar avatar-sm mr-2"><img class="avatar-img rounded-circle" src="assets/img/doctors/doctor-thumb1-06.jpg" alt="User Image"></a>
                                                            <a > Hope Michaels</a>
                                                        </h2>
                                                    </td>
                                                    <td>643412394</td>
                                                    <td class="text-right">
                                                        <div class="actions">

                                                            <a data-toggle="modal" href="#edit_invoice_report" class="btn btn-sm bg-success-light mr-2">
                                                                <i class="fe fe-pencil"></i> Edit
                                                            </a>
                                                            <a class="btn btn-sm bg-danger-light" data-toggle="modal" href="#delete_modal">
                                                                <i class="fe fe-trash"></i> Delete
                                                            </a>
                                                        </div>
                                                    </td>


                                                </tr>
                                                <tr>
                                                    <td>913393312G</td>
                                                    <td>
                                                        <h2 class="table-avatar">
                                                            <a  class="avatar avatar-sm mr-2"><img class="avatar-img rounded-circle" src="assets/img/doctors/doctor-thumb1-07.jpg" alt="User Image"></a>
                                                            <a > Linda Williams</a>
                                                        </h2>
                                                    </td>
                                                    <td>612311321</td>
                                                    <td class="text-right">
                                                        <div class="actions">

                                                            <a data-toggle="modal" href="#edit_invoice_report" class="btn btn-sm bg-success-light mr-2">
                                                                <i class="fe fe-pencil"></i> Edit
                                                            </a>
                                                            <a class="btn btn-sm bg-danger-light" data-toggle="modal" href="#delete_modal">
                                                                <i class="fe fe-trash"></i> Delete
                                                            </a>
                                                        </div>
                                                    </td>


                                                </tr>
                                                <tr>
                                                    <td>999697811P</td>
                                                    <td>
                                                        <h2 class="table-avatar">
                                                            <a  class="avatar avatar-sm mr-2"><img class="avatar-img rounded-circle" src="assets/img/doctors/doctor-thumb1-08.jpg" alt="User Image"></a>
                                                            <a > Paul Moore</a>
                                                        </h2>
                                                    </td>
                                                    <td>676152323</td>
                                                    <td class="text-right">
                                                        <div class="actions">

                                                            <a data-toggle="modal" href="#edit_invoice_report" class="btn btn-sm bg-success-light mr-2">
                                                                <i class="fe fe-pencil"></i> Edit
                                                            </a>
                                                            <a class="btn btn-sm bg-danger-light" data-toggle="modal" href="#delete_modal">
                                                                <i class="fe fe-trash"></i> Delete
                                                            </a>
                                                        </div>
                                                    </td>


                                                </tr>
                                                <tr>
                                                    <td>762355611J</td>
                                                    <td>
                                                        <h2 class="table-avatar">
                                                            <a  class="avatar avatar-sm mr-2"><img class="avatar-img rounded-circle" src="assets/img/doctors/doctor-thumb1-09.jpg" alt="User Image"></a>
                                                            <a >  John Jonhson</a>
                                                        </h2>
                                                    </td>
                                                    <td>611245322</td>
                                                    <td class="text-right">
                                                        <div class="actions">

                                                            <a data-toggle="modal" href="#edit_invoice_report" class="btn btn-sm bg-success-light mr-2">
                                                                <i class="fe fe-pencil"></i> Edit
                                                            </a>
                                                            <a class="btn btn-sm bg-danger-light" data-toggle="modal" href="#delete_modal">
                                                                <i class="fe fe-trash"></i> Delete
                                                            </a>
                                                        </div>
                                                    </td>


                                                </tr>
                                                <tr>
                                                    <td>981222832L</td>
                                                    <td>
                                                        <h2 class="table-avatar">
                                                            <a  class="avatar avatar-sm mr-2"><img class="avatar-img rounded-circle" src="assets/img/doctors/doctor-thumb1-10.jpg" alt="User Image"></a>
                                                            <a > Billie Brown</a>
                                                        </h2>
                                                    </td>
                                                    <td>614336311</td>
                                                    <td class="text-right">
                                                        <div class="actions">

                                                            <a data-toggle="modal" href="#edit_invoice_report" class="btn btn-sm bg-success-light mr-2">
                                                                <i class="fe fe-pencil"></i> Edit
                                                            </a>
                                                            <a class="btn btn-sm bg-danger-light" data-toggle="modal" href="#delete_modal">
                                                                <i class="fe fe-trash"></i> Delete
                                                            </a>
                                                        </div>
                                                    </td>


                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
            <!-- /Page Wrapper -->

        </div>

        <script type="text/javascript">

            function load() {
                //alert("onload");
                $('a#a_tbnotesverbergen').text('Sam Smith');
                //document.getElementById("user_name").value = "JEJEJEJE";
            }
            window.onload = load;

            function saveModification() {
                $('a#a_tbnotesverbergen').text('Sam Blair Smith');
            }

            function fnselect(dni, name, speciality, phone) {
                document.getElementById("dni").placeholder = dni;
                document.getElementById("name").placeholder = name;
                //document.getElementById("speciality").placeholder = speciality;
                document.getElementById("phone").placeholder = phone;
            }
        </script>


        <!-- Edit Details Modal -->
        <div class="modal fade" id="edit_invoice_report" aria-hidden="true" role="dialog">
            <div class="modal-dialog modal-dialog-centered" role="document" >
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Edit administrador</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form>
                            <div class="row form-row">
                                <div class="col-12 col-sm-6">
                                    <div class="form-group">
                                        <label>DNI/NIE/NIF</label>
                                        <input type="text" class="form-control" id="dni">
                                    </div>
                                </div>
                                <div class="col-12 col-sm-6">
                                    <div class="form-group">
                                        <label>Name</label>
                                        <input type="text" class="form-control" id="name">
                                    </div>
                                </div>
                                <div class="col-12 col-sm-6">
                                    <div class="form-group">
                                        <label>Date of birth</label>
                                        <input type="text" class="form-control" placeholder="10/10/1986">
                                    </div>
                                </div>
                                <div class="col-12 col-sm-6">
                                    <div class="form-group">
                                        <label>Address</label>
                                        <input type="text"  class="form-control" placeholder="4417  Goosetown Drive, Taylorsville, North Carolina, 28681">
                                    </div>
                                </div>
                                <div class="col-12 col-sm-6">
                                    <div class="form-group">
                                        <label>Phone</label>
                                        <input type="text"  class="form-control" placeholder="8286329170">
                                    </div>
                                </div>
                                <div class="col-12 col-sm-6">
                                    <div class="form-group">
                                        <label>Image</label>
                                        <input type="file"  class="form-control">
                                    </div>
                                </div>
                            </div>
                            <button type="submit" class="btn btn-primary btn-block" onclick="saveModification()" data-dismiss="modal">Save Changes</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- /Edit Details Modal -->

        <!-- Delete Modal -->
        <div class="modal fade" id="delete_modal" aria-hidden="true" role="dialog">
            <div class="modal-dialog modal-dialog-centered" role="document" >
                <div class="modal-content">
                    <!--	<div class="modal-header">
                                    <h5 class="modal-title">Delete</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                    </button>
                            </div>-->
                    <div class="modal-body">
                        <div class="form-content p-2">
                            <h4 class="modal-title">Delete</h4>
                            <p class="mb-4">Are you sure want to delete?</p>
                            <button type="button" class="btn btn-primary">Save </button>
                            <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /Delete Modal -->


        <!-- /Main Wrapper -->

        <!-- jQuery -->
        <script src="assets/js/jquery-3.2.1.min.js"></script>

        <!-- Bootstrap Core JS -->
        <script src="assets/js/popper.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>

        <!-- Slimscroll JS -->
        <script src="assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>

        <!-- Datatables JS -->
        <script src="assets/plugins/datatables/jquery.dataTables.min.js"></script>
        <script src="assets/plugins/datatables/datatables.min.js"></script>

        <!-- Custom JS -->
        <script  src="assets/js/script.js"></script>

    </body>

    <!-- Mirrored from dreamguys.co.in/demo/doccure/admin/doctor-list.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 24 Dec 2019 21:07:47 GMT -->
</html>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
        <title>ULPGC User Management</title>

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
                                <h3 class="page-title">List of Teachers</h3>
                            </div>
                        </div>
                    </div>
                    <!-- /Page Header -->

                    <div class="row">
                        <div class="col-sm-12">
                            <div class="card">
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table class="table table-hover table-center mb-0" summary='somefreakydummytext'>
                                            <thead>
                                                <tr>
                                                    <th>DNI/NIE/NIF</th>
                                                    <th>Name</th>
                                                    <th>Category</th>
                                                    <th>Phone</th>
                                                    <th>Actions</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>982397812S</td>
                                                    <td>
                                                        <h2 class="table-avatar">
                                                            <a  class="avatar avatar-sm mr-2"><img class="avatar-img rounded-circle" src="assets/img/doctors/doctor-thumb-01.jpg" alt="User Image"></a>
                                                            <a > Ruby Perrin</a>
                                                        </h2>
                                                    </td>
                                                    <td>Software architecture</td>
                                                    <td>613456324</td>
                                                    <td class="text-right">
                                                        <div class="actions">


                                                            <a data-toggle="modal" href="#edit_invoice_report" class="btn btn-sm bg-success-light mr-2" onclick="return fnselect('982397812S', ' Ruby Perrin', 'Dental', '613456324')">
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
                                                            <a  class="avatar avatar-sm mr-2"><img class="avatar-img rounded-circle" src="assets/img/doctors/doctor-thumb-02.jpg" alt="User Image"></a>
                                                            <a > Darren Elder</a>
                                                        </h2>
                                                    </td>
                                                    <td>User interface design</td>
                                                    <td>525641324</td>
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
                                                            <a  class="avatar avatar-sm mr-2"><img class="avatar-img rounded-circle" src="assets/img/doctors/doctor-thumb-03.jpg" alt="User Image"></a>
                                                            <a > Deborah Angel</a>
                                                        </h2>
                                                    </td>
                                                    <td>Embedded and Real Time Systems</td>
                                                    <td>4022231492</td>
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
                                                            <a  class="avatar avatar-sm mr-2"><img class="avatar-img rounded-circle" src="assets/img/doctors/doctor-thumb-04.jpg" alt="User Image"></a>
                                                            <a > Sofia Brient</a>
                                                        </h2>
                                                    </td>
                                                    <td>Algorithms and Computability</td>
                                                    <td>623441524</td>
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
                                                            <a  class="avatar avatar-sm mr-2"><img class="avatar-img rounded-circle" src="assets/img/doctors/doctor-thumb-05.jpg" alt="User Image"></a>
                                                            <a > Marvin Campbell</a>
                                                        </h2>
                                                    </td>
                                                    <td>Software architecture</td>
                                                    <td>666441324</td>
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
                                                            <a  class="avatar avatar-sm mr-2"><img class="avatar-img rounded-circle" src="assets/img/doctors/doctor-thumb-06.jpg" alt="User Image"></a>
                                                            <a > Katharine Berthold</a>
                                                        </h2>
                                                    </td>
                                                    <td>Digital Systems Design</td>
                                                    <td>582522384</td>
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
                                                            <a  class="avatar avatar-sm mr-2"><img class="avatar-img rounded-circle" src="assets/img/doctors/doctor-thumb-07.jpg" alt="User Image"></a>
                                                            <a > Linda Tobin</a>
                                                        </h2>
                                                    </td>
                                                    <td>Intelligent Systems I</td>
                                                    <td>911725380</td>
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
                                                            <a  class="avatar avatar-sm mr-2"><img class="avatar-img rounded-circle" src="assets/img/doctors/doctor-thumb-08.jpg" alt="User Image"></a>
                                                            <a > Paul Richard</a>
                                                        </h2>
                                                    </td>
                                                    <td>Intelligent Systems II</td>
                                                    <td>611327222</td>
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
                                                            <a  class="avatar avatar-sm mr-2"><img class="avatar-img rounded-circle" src="assets/img/doctors/doctor-thumb-09.jpg" alt="User Image"></a>
                                                            <a > John Gibbs</a>
                                                        </h2>
                                                    </td>
                                                    <td>Business Planning and Control</td>
                                                    <td>611728984</td>
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
                                                    <td>921727184</td>
                                                    <td>
                                                        <h2 class="table-avatar">
                                                            <a  class="avatar avatar-sm mr-2"><img class="avatar-img rounded-circle" src="assets/img/doctors/doctor-thumb-10.jpg" alt="User Image"></a>
                                                            <a > Olga Barlow</a>
                                                        </h2>
                                                    </td>
                                                    <td>Agile Development Methodologies</td>
                                                    <td>611727384</td>
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




        <!-- Edit Details Modal -->
        <div class="modal fade" id="edit_invoice_report" aria-hidden="true" role="dialog">
            <div class="modal-dialog modal-dialog-centered" role="document" >
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Edit teacher</h5>
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
                                        <input type="text" class="form-control" placeholder="111697819A">
                                    </div>
                                </div>
                                <div class="col-12 col-sm-6">
                                    <div class="form-group">
                                        <label>Name</label>
                                        <input type="text" class="form-control"  placeholder="Dr. Ruby Perrin">
                                    </div>
                                </div>
                                <div class="col-12 col-sm-6">
                                    <div class="form-group">
                                        <label>Birth date</label>
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
                                        <input type="text"  class="form-control" placeholder="613456324">
                                    </div>
                                </div>
                                <div class="col-12 col-sm-6">
                                    <div class="form-group">
                                        <label>Category</label>
                                        <select class="form-control">
                                            <option>Software architecture</option>
                                            <option value="1">Software architecture</option>
                                            <option value="2">User interface design</option>
                                            <option value="3">Embedded and Real Time Systems</option>
                                            <option value="4">Algorithms and Computability</option>
                                            <option value="1">Software architecture</option>
                                            <option value="1">Digital Systems Design</option>
                                            <option value="1">Intelligent Systems I</option>
                                            <option value="1">Intelligent Systems II</option>
                                            <option value="1">Innovation and Creation of Technology-Based Companies</option>
                                            <option value="1">Business Planning and Control</option>
                                            <option value="1">Fundamentals of Security</option>
                                            <option value="1">Agile Development Methodologies</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-24 col-sm-10">
                                    <div class="form-group">
                                        <label>Additional information</label>
                                        <textarea class="form-control" id="info" rows="3" placeholder=""></textarea>
                                    </div>
                                </div>
                                <div class="col-12 col-sm-6">
                                    <div class="form-group">
                                        <label>Image</label>
                                        <input type="file"  class="form-control">
                                    </div>
                                </div>
                            </div>
                            <button type="submit" class="btn btn-primary btn-block" onclick="showError()">Save Changes</button>
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
                            <button type="button" class="btn btn-primary" onclick="deleteUser()" data-dismiss="modal">Save</button>
                            <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /Delete Modal -->



        <!-- Delete Modal -->
        <div class="modal fade" id="error_modal" aria-hidden="true" role="dialog">
            <div class="modal-dialog modal-dialog-centered" role="document" >
                <div class="modal-content">
                    <!--	<div class="modal-header">
                                    <h5 class="modal-title">Error</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                    </button>
                            </div>-->
                    <div class="modal-body">
                        <div class="form-content p-2">
                            <h4 class="modal-title">Error</h4>
                            <p class="mb-4">DNI/NIE/NIF already exist. Check it out</p>
                            <button type="button" class="btn btn-primary">Ok</button>
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
</html>

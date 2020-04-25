<!DOCTYPE html>
<html lang="en">
<<<<<<< HEAD
=======

>>>>>>> origin
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

    </head>
<<<<<<< HEAD
    <body onload="getStudentsData()">
=======
    <body>
>>>>>>> origin

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
<<<<<<< HEAD
                    <!-- User Menu -->
                    <li class="nav-item dropdown has-arrow">
                        <a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown">
                            <span class="user-img"><img class="rounded-circle"  width="31" id="imagenU"></span>
=======


                    <!-- User Menu -->
                    <li class="nav-item dropdown has-arrow">
                        <a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown">
                            <span class="user-img"><img class="rounded-circle" src="assets/img/profiles/avatar-01.jpg" width="31" alt="Ryan Taylor"></span>
>>>>>>> origin
                        </a>
                        <div class="dropdown-menu">
                            <div class="user-header">
                                <div class="avatar avatar-sm">
<<<<<<< HEAD
                                    <img id="imagenU2" alt="User Image" class="avatar-img rounded-circle">
                                </div>
                                <div class="user-text">
                                    <h6 id="name"></h6>
                                    <p class="text-muted mb-0" id="type"></p>
                                </div>
                            </div>
                            <a class="dropdown-item" >My Profile</a>
                            <a class="dropdown-item">Settings</a>
                            <a class="dropdown-item" href="javascript:logout()">Logout</a>
=======
                                    <img src="assets/img/profiles/avatar-01.jpg" alt="User Image" class="avatar-img rounded-circle">
                                </div>
                                <div class="user-text">
                                    <h6>Ryan Taylor</h6>
                                    <p class="text-muted mb-0">Administrator</p>
                                </div>
                            </div>
                            <a class="dropdown-item">My Profile</a>
                            <a class="dropdown-item">Settings</a>
                            <a class="dropdown-item" href="../index.jsp">Logout</a>
>>>>>>> origin
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
                                <h3 class="page-title">List of Students</h3>

                            </div>
                        </div>
                    </div>
                    <!-- /Page Header -->

                    <div class="row">
                        <div class="col-sm-12">
                            <div class="card">
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <div class="table-responsive">
                                            <table class="table table-hover table-center mb-0" id="tbl">
                                                <thead>
                                                    <tr>
                                                        <th>DNI/NIE/NIF</th>
                                                        <th>Name</th>
                                                        <th>Category</th>
                                                        <th>Phone</th>
                                                        <th>Actions</th>
                                                    </tr>
                                                </thead>
<<<<<<< HEAD
                                                <tbody id="student_table">

=======
                                                <tbody>

                                                    <tr id="newuser">
                                                        <td>45722867M</td>
                                                        <td>
                                                            <h2 class="table-avatar">
                                                                <a class="avatar avatar-sm mr-2"><img class="avatar-img rounded-circle" src="assets/img/doctors/dakota_photo.jpeg" alt="User Image"></a>
                                                                <a >Dakota Michaels</a>
                                                            </h2>
                                                        </td>
                                                        <td>Second year</td>
                                                        <td>766414139</td>

                                                        <td class="text-right">
                                                            <div class="actions">

                                                                <a data-toggle="modal" href="#edit_invoice_report" class="btn btn-sm bg-success-light mr-2" onclick="return fnselect('456227861R', 'Charlene Reed', '29', '4417  Goosetown Drive, Taylorsville, North Carolina, 28681', '8286329170')">
                                                                    <i class="fe fe-pencil"></i> Edit
                                                                </a>
                                                                <a class="btn btn-sm bg-danger-light" data-toggle="modal" href="#delete_modal">
                                                                    <i class="fe fe-trash"></i> Delete
                                                                </a>
                                                            </div>
                                                        </td>



                                                    </tr>



                                                    <tr>
                                                        <td>456227861R</td>
                                                        <td>
                                                            <h2 class="table-avatar">
                                                                <a  class="avatar avatar-sm mr-2"><img class="avatar-img rounded-circle" src="assets/img/patients/patient1.jpg" alt="User Image"></a>
                                                                <a >Charlene Reed </a>
                                                            </h2>
                                                        </td>
                                                        <td>First year</td>
                                                        <td>8286329170</td>

                                                        <td class="text-right">
                                                            <div class="actions">

                                                                <a data-toggle="modal" href="#edit_invoice_report" class="btn btn-sm bg-success-light mr-2" onclick="return fnselect('456227861R', 'Charlene Reed', '29', '4417  Goosetown Drive, Taylorsville, North Carolina, 28681', '8286329170')">
                                                                    <i class="fe fe-pencil"></i> Edit
                                                                </a>
                                                                <a class="btn btn-sm bg-danger-light" data-toggle="modal" href="#delete_modal">
                                                                    <i class="fe fe-trash"></i> Delete
                                                                </a>
                                                            </div>
                                                        </td>



                                                    </tr>
                                                    <tr>
                                                        <td>424427561C</td>
                                                        <td>
                                                            <h2 class="table-avatar">
                                                                <a  class="avatar avatar-sm mr-2"><img class="avatar-img rounded-circle" src="assets/img/patients/patient2.jpg" alt="User Image"></a>
                                                                <a >Travis Trimble </a>
                                                            </h2>
                                                        </td>
                                                        <td>Third year - Software engineering</td>
                                                        <td>2077299974</td>

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
                                                        <td>006007800L</td>
                                                        <td>
                                                            <h2 class="table-avatar">
                                                                <a  class="avatar avatar-sm mr-2"><img class="avatar-img rounded-circle" src="assets/img/patients/patient3.jpg" alt="User Image"></a>
                                                                <a >Carl Kelly</a>
                                                            </h2>
                                                        </td>
                                                        <td>Fourth year - Software engineering</td>
                                                        <td>2607247769</td>

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
                                                        <td>226257861A</td>
                                                        <td>
                                                            <h2 class="table-avatar">
                                                                <a  class="avatar avatar-sm mr-2"><img class="avatar-img rounded-circle" src="assets/img/patients/patient4.jpg" alt="User Image"></a>
                                                                <a > Michelle Fairfax</a>
                                                            </h2>
                                                        </td>
                                                        <td>Fifth year - Double grade</td>
                                                        <td>5043686874</td>

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
                                                        <td>452327111X</td>
                                                        <td>
                                                            <h2 class="table-avatar">
                                                                <a  class="avatar avatar-sm mr-2"><img class="avatar-img rounded-circle" src="assets/img/patients/patient5.jpg" alt="User Image"></a>
                                                                <a >Gina Moore</a>
                                                            </h2>
                                                        </td>
                                                        <td>Second year</td>
                                                        <td>9548207887</td>

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
                                                        <td>956997869Q</td>
                                                        <td>
                                                            <h2 class="table-avatar">
                                                                <a  class="avatar avatar-sm mr-2"><img class="avatar-img rounded-circle" src="assets/img/patients/patient6.jpg" alt="User Image"></a>
                                                                <a >Elsie Gilley</a>
                                                            </h2>
                                                        </td>
                                                        <td>Second year - Double grade</td>
                                                        <td>3153844562</td>

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
                                                        <td>937997291B</td>
                                                        <td>
                                                            <h2 class="table-avatar">
                                                                <a  class="avatar avatar-sm mr-2"><img class="avatar-img rounded-circle" src="assets/img/patients/patient7.jpg" alt="User Image"></a>
                                                                <a > Joan Gardner</a>
                                                            </h2>
                                                        </td>
                                                        <td>Third year - Computer engineering</td>
                                                        <td>7072202603</td>

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
                                                        <td>846912369S</td>
                                                        <td>
                                                            <h2 class="table-avatar">
                                                                <a  class="avatar avatar-sm mr-2"><img class="avatar-img rounded-circle" src="assets/img/patients/patient8.jpg" alt="User Image"></a>
                                                                <a > Daniel Griffing</a>
                                                            </h2>
                                                        </td>
                                                        <td>Fourth year - Information technology</td>
                                                        <td>9737739497</td>

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
                                                        <td>555127469P</td>
                                                        <td>
                                                            <h2 class="table-avatar">
                                                                <a  class="avatar avatar-sm mr-2"><img class="avatar-img rounded-circle" src="assets/img/patients/patient9.jpg" alt="User Image"></a>
                                                                <a >Walter Roberson</a>
                                                            </h2>
                                                        </td>
                                                        <td>Third year - Information technology</td>
                                                        <td>8503584445</td>

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
                                                        <td>756923849V</td>
                                                        <td>
                                                            <h2 class="table-avatar">
                                                                <a  class="avatar avatar-sm mr-2"><img class="avatar-img rounded-circle" src="assets/img/patients/patient10.jpg" alt="User Image"></a>
                                                                <a >Robert Rhodes</a>
                                                            </h2>
                                                        </td>
                                                        <td>Third year - Double grade</td>
                                                        <td>8582595285</td>
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
                                                        <td>981697812S</td>
                                                        <td>
                                                            <h2 class="table-avatar">
                                                                <a  class="avatar avatar-sm mr-2"><img class="avatar-img rounded-circle" src="assets/img/patients/patient11.jpg" alt="User Image"></a>
                                                                <a >Harry Williams</a>
                                                            </h2>
                                                        </td>
                                                        <td>First year</td>
                                                        <td>3036077075</td>
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
                                                        <td>981247860G</td>
                                                        <td>
                                                            <h2 class="table-avatar">
                                                                <a  class="avatar avatar-sm mr-2"><img class="avatar-img rounded-circle" src="assets/img/patients/patient12.jpg" alt="User Image"></a>
                                                                <a >Robert Johnston</a>
                                                            </h2>
                                                        </td>
                                                        <td>First year</td>
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
                                                        <td>456014864H</td>
                                                        <td>
                                                            <h2 class="table-avatar">
                                                                <a  class="avatar avatar-sm mr-2"><img class="avatar-img rounded-circle" src="assets/img/patients/patient13.jpg" alt="User Image"></a>
                                                                <a >Tracy Mason</a>
                                                            </h2>
                                                        </td>
                                                        <td>First year</td>
                                                        <td>7737265795</td>
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
                                                        <td>146247815D</td>
                                                        <td>
                                                            <h2 class="table-avatar">
                                                                <a  class="avatar avatar-sm mr-2"><img class="avatar-img rounded-circle" src="assets/img/patients/patient14.jpg" alt="User Image"></a>
                                                                <a > Daniel Finch</a>
                                                            </h2>
                                                        </td>
                                                        <td>Second year - Double grade</td>
                                                        <td>3362314023</td>
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
                                                        <td>123457869J</td>
                                                        <td>
                                                            <h2 class="table-avatar">
                                                                <a  class="avatar avatar-sm mr-2"><img class="avatar-img rounded-circle" src="assets/img/patients/patient15.jpg" alt="User Image"></a>
                                                                <a >Jessica Garza</a>
                                                            </h2>
                                                        </td>
                                                        <td>Second year - Double grade</td>
                                                        <td>7082788201</td>
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
>>>>>>> origin
                                                </tbody>
                                            </table>
                                        </div>
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
                        <h5 class="modal-title">Edit student</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
<<<<<<< HEAD
                        <form onsubmit="updateUsers(); return false">
=======
                        <form>
>>>>>>> origin
                            <div class="row form-row">
                                <div class="col-12 col-sm-6">
                                    <div class="form-group">
                                        <label>DNI/NIE/NIF</label>
                                        <input type="text" class="form-control" id="dni">
                                    </div>
<<<<<<< HEAD
                                    <div id="errorDNI"></div>
=======
>>>>>>> origin
                                </div>
                                <div class="col-12 col-sm-6">
                                    <div class="form-group">
                                        <label>Name</label>
<<<<<<< HEAD
                                        <input type="text" class="form-control" id="username">
=======
                                        <input type="text" class="form-control" id="name">
>>>>>>> origin
                                    </div>
                                </div>
                                <div class="col-12 col-sm-6">
                                    <div class="form-group">
                                        <label>Date of birth</label>
<<<<<<< HEAD
                                        <input type="text" class="form-control" id="birth">
                                    </div>
                                    <div id="errorDate"></div>
=======
                                        <input type="text" class="form-control" placeholder="10/10/1986">
                                    </div>
>>>>>>> origin
                                </div>
                                <div class="col-12 col-sm-6">
                                    <div class="form-group">
                                        <label>Address</label>
<<<<<<< HEAD
                                        <input type="text"  class="form-control" id="address">
=======
                                        <input type="text"  class="form-control" placeholder="4417  Goosetown Drive, Taylorsville, North Carolina, 28681">
>>>>>>> origin
                                    </div>
                                </div>
                                <div class="col-12 col-sm-6">
                                    <div class="form-group">
                                        <label>Phone</label>
<<<<<<< HEAD
                                        <input type="text"  class="form-control" id="phone">
                                    </div>
                                    <div id="errorPhone"></div>
=======
                                        <input type="text"  class="form-control" placeholder="8286329170">
                                    </div>
>>>>>>> origin
                                </div>
                                <div class="col-12 col-sm-6">
                                    <div class="form-group">
                                        <label>Category</label>
<<<<<<< HEAD
                                        <select class="form-control" id="category">
                                            <option value="First year">First year</option>
                                            <option value="First year - Double grade">First year - Double grade</option>
                                            <option value="Second year">Second year</option>
                                            <option value="Second year - Double grade">Second year - Double grade</option>
                                            <option value="Third year - Software engineering">Third year - Software engineering</option>
                                            <option value="Third year - Computer engineering">Third year - Computer engineering</option>
                                            <option value="Third year - Computing">Third year - Computing</option>
                                            <option value="Third year - Information technology">Third year - Information technology</option>
                                            <option value="Third year - Double grade">Third year - Double grade</option>
                                            <option value="Fourth year - Software engineering">Fourth year - Software engineering</option>
                                            <option value="Fourth year - Computer engineering">Fourth year - Computer engineering</option>
                                            <option value="Fourth year - Computing">Fourth year - Computing</option>
                                            <option value="Fourth year - Information technology">Fourth year - Information technology</option>
                                            <option value="Fifth year - Double grade">Fifth year - Double grade</option>
=======
                                        <select class="form-control">
                                            <option>First year</option>
                                            <option value="1">First year</option>
                                            <option value="4">First year - Double grade</option>
                                            <option value="2">Second year</option>
                                            <option value="4">Second year - Double grade</option>
                                            <option value="3">Third year - Software engineering</option>
                                            <option value="3">Third year - Computer engineering</option>
                                            <option value="3">Third year - Computing</option>
                                            <option value="3">Third year - Information technology</option>
                                            <option value="4">Third year - Double grade</option>
                                            <option value="3">Fourth year - Software engineering</option>
                                            <option value="3">Fourth year - Computer engineering</option>
                                            <option value="3">Fourth year - Computing</option>
                                            <option value="3">Fourth year - Information technology</option>
                                            <option value="4">Fifth year - Double grade</option>
>>>>>>> origin
                                        </select>
                                    </div>
                                </div>
                                <div class="col-24 col-sm-10">
                                    <div class="form-group">
                                        <label>Additional information</label>
<<<<<<< HEAD
                                        <textarea class="form-control" rows="3" id="information"></textarea>
                                    </div>
                                </div>
                                <div class="col-24 col-sm-6">
                                    <div class="form-group">
                                        <label>Actual profile photo</label>
                                        <img id="profile_photo" class="img-thumbnail" width="200" height="200">
                                    </div>
                                </div>
                                
                                <div class="col-12 col-sm-10"> 
                                    <div class="form-group">
                                        <label>Image</label>
                                        <input type="file"  class="form-control"  onchange="uploadPreviewPhoto()" id="new_profile_photo" accept="image/*">
=======
                                        <textarea class="form-control" id="info" rows="3" placeholder=""></textarea>
                                    </div>
                                </div>
                                <div class="col-12 col-sm-6">
                                    <div class="form-group">
                                        <label>Image</label>
                                        <input type="file"  class="form-control">
>>>>>>> origin
                                    </div>
                                </div>
                            </div>
                            <button type="submit" class="btn btn-primary btn-block">Save Changes</button>
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
<<<<<<< HEAD
        <script src="https://www.gstatic.com/firebasejs/4.8.1/firebase.js"></script>
        <script src="../script.js"></script>
=======

>>>>>>> origin
    </body>

    <!-- Mirrored from dreamguys.co.in/demo/doccure/admin/patient-list.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 24 Dec 2019 21:07:49 GMT -->
</html>

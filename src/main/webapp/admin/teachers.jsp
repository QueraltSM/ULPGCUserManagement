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

    </head>
    <body onload="getTeachersData()">

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
                            <span class="user-img"><img class="rounded-circle"  width="31" id="imagenU"></span>
                        </a>
                        <div class="dropdown-menu">
                            <div class="user-header">
                                <div class="avatar avatar-sm">
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
                                            <tbody id="teacher_table">

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
                        <form onsubmit="updateUsers(); return false">
                            <div class="row form-row">
                                <div class="col-12 col-sm-6">
                                    <div class="form-group">
                                        <label>DNI/NIE/NIF</label>
                                        <input type="text" class="form-control" id="dni">
                                        <div id="errorDNI" class="error_label"></div>
                                    </div>
                                    
                                </div>
                                <div class="col-12 col-sm-6">
                                    <div class="form-group">
                                        <label>Name</label>
                                        <input type="text" class="form-control" id="username">
                                    </div>
                                </div>
                                <div class="col-12 col-sm-6">
                                    <div class="form-group">
                                        <label>Date of birth</label>
                                        <input type="text" class="form-control" id="birth">
                                        <div id="errorDate" class="error_label"></div>
                                    </div>
                                </div>
                                <div class="col-12 col-sm-6">
                                    <div class="form-group">
                                        <label>Address</label>
                                        <input type="text"  class="form-control" id="address">
                                    </div>
                                </div>
                                <div class="col-12 col-sm-6">
                                    <div class="form-group">
                                        <label>Phone</label>
                                        <input type="text"  class="form-control" id="phone">
                                        <div id="errorPhone" class="error_label"></div>
                                    </div>
                                </div>
                                <div class="col-12 col-sm-6">
                                    <div class="form-group">
                                        <label>Category</label>
                                        <select class="form-control" id="category">
                                            <option value="Software architecture">Software architecture</option>
                                            <option value="User interface design">User interface design</option>
                                            <option value="Embedded and Real Time Systems">Embedded and Real Time Systems</option>
                                            <option value="Algorithms and Computability">Algorithms and Computability</option>
                                            <option value="Software architecture">Software architecture</option>
                                            <option value="Digital Systems Design">Digital Systems Design</option>
                                            <option value="Intelligent Systems I">Intelligent Systems I</option>
                                            <option value="Intelligent Systems II">Intelligent Systems II</option>
                                            <option value="Innovation and Creation of Technology-Based Companies">Innovation and Creation of Technology-Based Companies</option>
                                            <option value="Business Planning and Control">Business Planning and Control</option>
                                            <option value="Fundamentals of Security">Fundamentals of Security</option>
                                            <option value="Agile Development Methodologies">Agile Development Methodologies</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-24 col-sm-10">
                                    <div class="form-group">
                                        <label>Additional information</label>
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
                    <div class="modal-body">
                        <div class="form-content p-2">
                            <h4 class="modal-title">Delete</h4>
                            <p class="mb-4">Are you sure want to delete?</p>
                            <button type="button" class="btn btn-primary" onclick="deleteUser()">Save</button>
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
        <script src="https://www.gstatic.com/firebasejs/4.8.1/firebase.js"></script>
        <script src="../script.js"></script>
    </body>
</html>

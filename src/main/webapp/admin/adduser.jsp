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

        <!-- Select2 CSS -->
        <link rel="stylesheet" href="assets/css/select2.min.css">

        <!-- Main CSS -->
        <link rel="stylesheet" href="assets/css/style.css">

        <!--[if lt IE 9]>
                <script src="assets/js/html5shiv.min.js"></script>
                <script src="assets/js/respond.min.js"></script>
        <![endif]-->
    </head>
    <body onload="resetAddUserForm()">

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
                            <div class="col">
                                <h3 class="page-title">Register new user</h3>
                            </div>
                        </div>
                    </div>
                    <!-- /Page Header -->

                    <div class="row">
                        <div class="col-xl-12 d-flex">
                            <div class="card flex-fill">
                                <div class="card-header">
                                    <h4 class="card-title">User data</h4>
                                </div>
                                <div class="card-body">
                                    <form onsubmit="addUsers();
                                            return false">
                                        <div class="form-group row">
                                            <label class="col-lg-3 col-form-label">Email</label>
                                            <div class="col-lg-9">
                                                <input type="email" class="form-control" id="email" required>
                                                <div id="errorEmail" class="error_label"></div>
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label class="col-lg-3 col-form-label">Password</label>
                                            <div class="col-lg-9">
                                                <input type="password" class="form-control" id="password" required>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-lg-3 col-form-label">Repeat Password</label>
                                            <div class="col-lg-9">
                                                <input type="password" class="form-control" id="password_repeat" required>
                                                <div id="errorPass" class="error_label"></div>
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label class="col-lg-3 col-form-label">DNI/NIE/NIF</label>
                                            <div class="col-lg-9">
                                                <input type="text" class="form-control" id="dni" required>
                                                <div id="errorDNI" class="error_label"></div>
                                            </div>
                                            
                                        </div>

                                        <div class="form-group row">
                                            <label class="col-lg-3 col-form-label">Name</label>
                                            <div class="col-lg-9">
                                                <input type="text" class="form-control" id="username" required>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-lg-3 col-form-label">Date of birth</label>
                                            <div class="col-lg-9">
                                                <input type="text" class="form-control" id="birth" required>
                                            <div id="errorDate" class="error_label"></div>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-lg-3 col-form-label">Address</label>
                                            <div class="col-lg-9">
                                                <input type="text" class="form-control" id="address" required>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-lg-3 col-form-label">Phone</label>
                                            <div class="col-lg-9">
                                                <input type="text" class="form-control" id="phone" required>
                                            <div id="errorPhone" class="error_label"></div>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-lg-3 col-form-label">Additional information</label>
                                            <div class="col-lg-9">
                                                <textarea class="form-control" id="information" rows="6"></textarea>
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label class="col-lg-3 col-form-label">Image</label>
                                            <div class="col-lg-9">
                                                <input type="file" class="form-control" id="profile_photo" required accept="image/*">
                                            </div>
                                        </div>
                                        <div class="form-group row" id="Rol">
                                            <label class="col-lg-3 col-form-label">Type</label>
                                            <div class="col-lg-9">
                                                <select class="select" id="rol" onchange="selectRol()" required>
                                                    <option value="Student" selected>Student</option>
                                                    <option value="Teacher">Teacher</option>
                                                    <option value="Administrator">Administrator</option>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="form-group row" id="category_student">
                                            <label class="col-lg-3 col-form-label">Category</label>
                                            <div class="col-lg-9">
                                                <select class="select" id="student_selection">
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
                                                </select>
                                            </div>
                                        </div>

                                        <div class="form-group row" id="category_teacher">
                                            <label class="col-lg-3 col-form-label">Category</label>
                                            <div class="col-lg-9">
                                                <select class="select" id="teacher_selection">
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
                                        <div class="text-right">
                                            <button type="submit" class="btn btn-primary" data-dismiss="modal">Submit</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <!-- /Main Wrapper -->




        <!-- /Main Wrapper -->

        <!-- jQuery -->


        <script src="assets/js/jquery-3.2.1.min.js"></script>

        <!-- Bootstrap Core JS -->
        <script src="assets/js/popper.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>

        <!-- Slimscroll JS -->
        <script src="assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>

        <!-- Select2 JS -->
        <script src="assets/js/select2.min.js"></script>

        <!-- Custom JS -->
        <script  src="assets/js/script.js"></script>
        <script src="https://www.gstatic.com/firebasejs/4.8.1/firebase.js"></script>
        <script src="../script.js"></script>
    </body>
</html>

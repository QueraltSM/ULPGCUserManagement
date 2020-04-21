firebase.auth().onAuthStateChanged(function (user) {
    if (user) {
        var user = firebase.auth().currentUser;

        if (user !== null) {
            email = user.email;
            uid = user.uid;
            var name = "";
            var type = "";

            var database = firebase.database().ref('Users/' + uid).once('value').then(function (snapshot) {
                name = snapshot.val().name;
                type = snapshot.val().type;

                if (type === "administrator") {
                    sessionStorage.setItem("name", name);
                    sessionStorage.setItem("type", type);
                    sessionStorage.setItem("id", uid);
                    window.location.replace("admin/home.jsp");
                }
            });
        }
    }
});

function login() {
    var email = document.getElementById("email").value;
    var password = document.getElementById("password").value;
    console.log(email);
    console.log(password);

    firebase.auth().signInWithEmailAndPassword(email, password).catch(function (error) {
        var errorCode = error.code;
        var errorMessage = error.message;
        console.log(errorMessage);
        document.getElementById("error").innerHTML = errorMessage;
    });
}

function logout() {
    firebase.auth().signOut().then(function () {
        window.location.replace("../index.jsp");
    }).catch(function (error) {
        var errorMessage = error.message;
        document.getElementById("error").innerHTML = errorMessage;
    });
}

function connectToFirebase() {
    var config = {
        apiKey: "AIzaSyD4Yzcfr1riLtzhSNYyLTHbQ-xercysVoQ",
        authDomain: "medicalia-ce51c.firebaseapp.com",
        databaseURL: "https://medicalia-ce51c.firebaseio.com",
        projectId: "medicalia-ce51c",
        storageBucket: "medicalia-ce51c.appspot.com",
        messagingSenderId: "1060550089496",
        appId: "1:1060550089496:web:32f793f847de5417a4dc6d",
        measurementId: "G-MQLJJNG4KT"
    };
    firebase.initializeApp(config);
}

function getSessionData() {
    connectToFirebase();
    fotos();
    if (window.location.href === "http://localhost:8080/ULPGCUserManagement/admin/home.jsp") {
        countUsers();
    }
    document.getElementById("name").innerHTML = sessionStorage.getItem("name");
    if (document.getElementById("welcome")) {
        document.getElementById("welcome").innerHTML = "Welcome " + sessionStorage.getItem("name");
    }
    document.getElementById("type").innerHTML = sessionStorage.getItem("type");
}

function countUsers() {
    var users = [0, 0, 0];
    firebase.database().ref('Users/').once('value').then(function (snapshot) {
        snapshot.forEach(function (childX) {
            if (childX.child("type").val() === "administrator") {
                users[0] += 1;
                document.getElementById("total_administrators").innerHTML = users[0];
            }
            if (childX.child("type").val() === "student") {
                users[1] += 1;
                document.getElementById("total_students").innerHTML = users[1];
            }
            if (childX.child("type").val() === "teacher") {
                users[2] += 1;
                document.getElementById("total_teachers").innerHTML = users[2];
            }
        });
    });
}

function setUserInfo(id) {
    //console.log(id);
    sessionStorage.setItem("id_users", id);
    firebase.database().ref('Users/' + id).once('value').then(function (snapshot) {
        //console.log("Id: " + snapshot.key);
        //console.log("DNI: " + snapshot.child("dni").val());
        sessionStorage.setItem("type_users", snapshot.child("type").val());
        document.getElementById("dni_user").value = snapshot.child("dni").val();
        document.getElementById("name_user").value = snapshot.child("name").val();
        document.getElementById("date_user").value = snapshot.child("birth").val();
        document.getElementById("address_user").value = snapshot.child("address").val();
        document.getElementById("phone_user").value = snapshot.child("phone").val();
        document.getElementById("information_user").value = snapshot.child("information").val();
        if (snapshot.child("type").val() !== "administrator") {
            document.getElementById("category").value = snapshot.child("category").val();
        }
    });
}

function updateUsers() {
    var id = sessionStorage.getItem("id_users");
    var tipo = sessionStorage.getItem("type_users");
    var dni = document.getElementById("dni_user").value;
    var date = document.getElementById("date_user").value;
    var phone = document.getElementById("phone_user").value;
    
    if (tipo === "administrator") {
        category = "";
    } else if (tipo === "student") {
        category = document.getElementById("category").value;
    } else if (tipo === "teacher") {
        category = document.getElementById("category").value;
    }
    console.log("Hola");
    if (validateDNI(dni) && validateDate(date) && validatePhone(phone)) {
            console.log("Hola2");
        firebase.database().ref('Users/' + id).update({
            dni: document.getElementById("dni_user").value,
            name: document.getElementById("name_user").value,
            birth: document.getElementById("date_user").value,
            address: document.getElementById("address_user").value,
            phone: document.getElementById("phone_user").value,
            information: document.getElementById("information_user").value,
            category: category
        });
    }
}

function getAdministratorsData() {
    getSessionData();
    var database = firebase.database().ref('Users/').once('value').then(function (snapshot) {
        //alert(snapshot.key);
        var content = "";
        snapshot.forEach(function (childX) {
            //alert(childX.key);
            //alert(childX.child("type").val());
            if (childX.child("type").val() === "administrator") {
                content += "<tr>" + "<td>" + childX.child("dni").val() + "</td>" +
                        "<td>" + childX.child("name").val() + "</td>" +
                        "<td>" + childX.child("phone").val() + "</td>" +
                        '<td><a data-toggle="modal" href="#edit_invoice_report" class="btn btn-sm bg-success-light mr-2" onclick=setUserInfo("' + childX.key + '")> <i class="fe fe-pencil"></i> Edit</a>' +
                        '<a class="btn btn-sm bg-danger-light" data-toggle="modal" href="#delete_modal">    <i class="fe fe-trash"></i> Delete </a></td>' +
                        "</tr>";
            }
        });
        $("#administrator_table").append(content);
    });
}

function getTeachersData() {
    getSessionData();
    var database = firebase.database().ref('Users/').once('value').then(function (snapshot) {
        var content = "";
        snapshot.forEach(function (childX) {
            if (childX.child("type").val() === "teacher") {
                content += "<tr>" + "<td>" + childX.child("dni").val() + "</td>" +
                        "<td>" + childX.child("name").val() + "</td>" +
                        "<td>" + childX.child("category").val() + "</td>" +
                        "<td>" + childX.child("phone").val() + "</td>" +
                        '<td><a data-toggle="modal" href="#edit_invoice_report" class="btn btn-sm bg-success-light mr-2" onclick=setUserInfo("' + childX.key + '")> <i class="fe fe-pencil"></i> Edit</a>' +
                        '<a class="btn btn-sm bg-danger-light" data-toggle="modal" href="#delete_modal">    <i class="fe fe-trash"></i> Delete </a></td>' +
                        "</tr>";
            }
        });
        $("#teacher_table").append(content);
    });
}

function getStudentsData() {
    getSessionData();
    var database = firebase.database().ref('Users/').once('value').then(function (snapshot) {
        var content = "";
        snapshot.forEach(function (childX) {
            if (childX.child("type").val() === "student") {
                content += "<tr>" + "<td>" + childX.child("dni").val() + "</td>" +
                        "<td>" + childX.child("name").val() + "</td>" +
                        "<td>" + childX.child("category").val() + "</td>" +
                        "<td>" + childX.child("phone").val() + "</td>" +
                        '<td><a data-toggle="modal" href="#edit_invoice_report" class="btn btn-sm bg-success-light mr-2" onclick=setUserInfo("' + childX.key + '")> <i class="fe fe-pencil"></i> Edit</a>' +
                        '<a class="btn btn-sm bg-danger-light" data-toggle="modal" href="#delete_modal">    <i class="fe fe-trash"></i> Delete </a></td>' +
                        "</tr>";
            }
        });
        $("#student_table").append(content);
    });
}

function fotos() {
    var uid = sessionStorage.getItem("id");
    var starsRef = firebase.storage().ref().child(uid + ".jpg").getDownloadURL().then(function (url) {
        document.getElementById('imagenU').src = url;
        document.getElementById('imagenU2').src = url;
    }).catch(function (error) {
        document.getElementById("error").innerHTML = error;
    });
}

function addUsers() {
    var email = document.getElementById("email").value;
    var password = document.getElementById("password").value;
    var password_repeat = document.getElementById("password_repeat").value;
    var dni = document.getElementById("dni").value;
    var date = document.getElementById("age").value;
    var phone = document.getElementById("phone").value;

    if (validatePass(password, password_repeat) && validateDNI(dni) && validateDate(date) && validatePhone(phone)) {
        firebase.auth().createUserWithEmailAndPassword(email, password).then(function (snapshot) {
            //console.log("Sin " + snapshot);
            //console.log("Con " + snapshot.uid);
            if (document.getElementById("tipo").value === "administrator") {
                categoria = " ";
            } else if (document.getElementById("tipo").value === "student") {
                categoria = document.getElementById("categoryStudent").value;
            } else if (document.getElementById("tipo").value === "teacher") {
                categoria = document.getElementById("categoryTeacher").value;
            }

            firebase.database().ref('Users/' + snapshot.uid).set({
                dni: document.getElementById("dni").value,
                name: document.getElementById("addname").value,
                birth: document.getElementById("age").value,
                address: document.getElementById("address").value,
                phone: document.getElementById("phone").value,
                information: document.getElementById("info").value,
                type: document.getElementById("tipo").value,
                category: categoria
            });
        }).catch(function (error) {
            var errorMessage = error.message;
            document.getElementById("error").innerHTML = errorMessage;
        });
    }
}

function handleClick() {
    var tipo = document.getElementById("tipo").value;

    document.getElementById("Category").style.display = "none";
    document.getElementById("CategoryT").style.display = "none";
    if (tipo === "student") {
        document.getElementById("Category").style.display = "flex";
    } else if (tipo === "teacher") {
        document.getElementById("CategoryT").style.display = "flex";
    }
}

function validateDNI(dni) {
    var ex_regular_dni = /^\d{8}[A-Z]$/;
    if (ex_regular_dni.test(dni) !== true) {
        document.getElementById("errorDNI").innerHTML = "Dni erroneo, formato no válido";
        return false;
    } else {
        document.getElementById("errorDNI").innerHTML = "";
        return true;
    }
}

function validateDate(date) {
    var ex_regular_date = /^([0-2][0-9]|3[0-1])(\/|-)(0[1-9]|1[0-2])\2(\d{4})(\s)?(([0-1][0-9]|2[0-3])(:)([0-5][0-9]))*/;
    if (ex_regular_date.test(date) !== true) {
        document.getElementById("errorDate").innerHTML = "Fecha de nacimiento errónea, formato no válido. Ej 1-1-2000";
        return false;
    } else {
        document.getElementById("errorDate").innerHTML = "";
        return true;
    }
    return true;
}

function validatePhone(phone) {
    var ex_regular_phone = /^\d{9,}$/;
    if (ex_regular_phone.test(phone) !== true) {
        document.getElementById("errorPhone").innerHTML = "Teléfono erróneo, formato no válido.";
        return false;
    } else {
        document.getElementById("errorPhone").innerHTML = "";
        return true;
    }
}

function validatePass(password, password_repeat) {

    if (password !== password_repeat) {
        document.getElementById("errorPass").innerHTML = "Passwords not match";
        return false;
    } else {
        document.getElementById("errorPass").innerHTML = "";
        return true;
    }
}
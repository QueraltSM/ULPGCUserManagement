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
    //fotos();
    document.getElementById("name").innerHTML = sessionStorage.getItem("name");
    if (document.getElementById("welcome")) {
        document.getElementById("welcome").innerHTML = "Welcome " + sessionStorage.getItem("name");
    }
    document.getElementById("type").innerHTML = sessionStorage.getItem("type");
}

function getAdministratorsData() {
    getSessionData();
    var database = firebase.database().ref('Users/').once('value').then(function (snapshot) {
        //alert(snapshot.key);
        var content = "";
        snapshot.forEach(function (childX) {
            //alert(childX.child("type").val());
            if (childX.child("type").val() === "administrator") {
                content += "<tr>" + "<td>" + childX.child("dni").val() + "</td>" +
                        "<td>" + childX.child("name").val() + "</td>" +
                        "<td>" + childX.child("phone").val() + "</td>" +
                        '<td><a data-toggle="modal" href="#edit_invoice_report" class="btn btn-sm bg-success-light mr-2" onclick=""> <i class="fe fe-pencil"></i> Edit</a>' +
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
                        '<td><a data-toggle="modal" href="#edit_invoice_report" class="btn btn-sm bg-success-light mr-2" onclick=""> <i class="fe fe-pencil"></i> Edit</a>' +
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
                        '<td><a data-toggle="modal" href="#edit_invoice_report" class="btn btn-sm bg-success-light mr-2" onclick=""> <i class="fe fe-pencil"></i> Edit</a>' +
                        '<a class="btn btn-sm bg-danger-light" data-toggle="modal" href="#delete_modal">    <i class="fe fe-trash"></i> Delete </a></td>' +
                        "</tr>";
            }
        });
        $("#student_table").append(content);
    });
}

/*function fotos() {
 var uid = sessionStorage.getItem("id");
 var starsRef = storageRef.child(uid + ".jpg").getDownloadURL().then(function (url) {
 document.getElementById('imagenU').src = url;
 }).catch(function (error) {
 document.getElementById("error").innerHTML = error;
 });
 }*/

function addUsers() {
    var email = document.getElementById("email").value;
    var password = document.getElementById("password").value;
    var dni = document.getElementById("dni").value;
    var date = document.getElementById("age").value;
    var phone = document.getElementById("phone").value;
    console.log(email);
    console.log(password);
    validateDNI(dni);
    validateDate(date);
    validatePhone(phone);
    
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
    } else {
        var node = document.getElementById("errorDNI");
        node.parentNode.removeChild(node);
    }
}

function validateDate(date) {
    var ex_regular_date = /^(\d{1,2})-(\d{1,2})-(\d{4})$/;
    if (ex_regular_date.test(date) !== true) {
        document.getElementById("errorDate").innerHTML = "Fecha de nacimiento errónea, formato no válido. Ej 1-1-2000";
    } else {
        var node = document.getElementById("errorDate");
        node.parentNode.removeChild(node);
    }
}

function validatePhone(phone) {
    var ex_regular_phone = /^\d{9,}$/;
    if (ex_regular_phone.test(phone) !== true) {
        document.getElementById("errorPhone").innerHTML = "Teléfono erróneo, formato no válido.";
    } else {
        var node = document.getElementById("errorPhone");
        node.parentNode.removeChild(node);
    }
}
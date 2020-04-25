/*
 * @Authors:
 * 
 * Oliver
 * Carlos
 * Néstor
 * Queralt
 */

firebase.auth().onAuthStateChanged(function (user) {
    if (user) { 
        var user = firebase.auth().currentUser;
        if (user !== null) {
            var name = "";
            var usref = firebase.database().ref("Users/" + firebase.auth().currentUser.uid); // Database URL
            usref.once('value', function (snapshot) {
                snapshot.forEach(function (childSnapshot) {
                    if (childSnapshot.key === "name")
                        name = childSnapshot.val();
                    if (childSnapshot.key === "type") {
                        replaceLocation(name, childSnapshot.val());
                    }
                });
            });
        }
    }
});

function accountNotDeleted(uid) {
    var database = firebase.database().ref().child('Users/' + uid);
    database.once('value', function (snapshot) {
        if (!snapshot.exists()) {
            alert("Account does not exist");
        }
    });
}

function replaceLocation(name, type) { // Set session variables and replace location
    sessionStorage.setItem("name", name);
    sessionStorage.setItem("type", type);
    sessionStorage.setItem("id", firebase.auth().currentUser.uid);
    var database = firebase.database().ref().child('Users/' + firebase.auth().currentUser.uid);
    database.once('value', function (snapshot) {
        if (!snapshot.exists()) {
            alert("Account does not exist");
        } else {
            if (type === "administrator") window.location.replace("admin/home.jsp");
        }
    });
}

function login() {
    var email = document.getElementById("email").value;
    var password = document.getElementById("password").value;
    console.log(email);
    console.log(password);

    firebase.auth().signInWithEmailAndPassword(email, password).catch(function (error) {
        document.getElementById("error").innerHTML = error.message;
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
    loadUserPhoto();
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
            if (childX.child("type").val() === "administrator" && childX.key !== sessionStorage.getItem("id")) {
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

function setProfilePhoto(id) {
    var imageRef = firebase.storage().ref().child(id + ".jpg");
    imageRef.getDownloadURL().then(function (url) {
        document.getElementById("profile_photo").src = url;
    }).catch(function (error) {
        alert(error);
    });
}

function setUserInfo(id) {
    storeUIDSelected(id);
    firebase.database().ref('Users/' + id).once('value').then(function (snapshot) {
        sessionStorage.setItem("type_users", snapshot.child("type").val());
        document.getElementById("dni").value = snapshot.child("dni").val();
        document.getElementById("username").value = snapshot.child("name").val();
        document.getElementById("birth").value = snapshot.child("birth").val();
        document.getElementById("address").value = snapshot.child("address").val();
        document.getElementById("phone").value = snapshot.child("phone").val();
        document.getElementById("information").value = snapshot.child("information").val();
        if (snapshot.child("type").val() !== "administrator") {
            document.getElementById("category").value = snapshot.child("category").val();
        }
    });
    setProfilePhoto(id);
}

function storeUIDSelected(uid) {
    sessionStorage.setItem("id_users", uid);
}

function uploadPreviewPhoto() {
    if (document.getElementById("photo_preview") !== null) document.getElementById("photo_preview").style.display = "flex";
    var reader = new FileReader();
    reader.onload = function (event) {
        document.getElementById("profile_photo").src = event.target.result;
    };
    reader.readAsDataURL(document.getElementById("new_profile_photo").files[0]);
}

function updateUsers() {
    var dni = document.getElementById("dni").value;
    var phone = document.getElementById("phone").value;
    var birth = document.getElementById("birth").value;
    var category = "";
    if (sessionStorage.getItem("type_users") === "teacher" || sessionStorage.getItem("type_users") === "student") {
        category = document.getElementById("category").value;
    }
    sessionStorage.setItem("validation", "true");
    validateDNI(dni, sessionStorage.getItem("id_users"));
    validateDate(birth);
    validatePhone(phone);
    
    if (sessionStorage.getItem("validation") === "true") {
        firebase.database().ref('Users/' + sessionStorage.getItem("id_users")).update({
            dni: dni,
            name: document.getElementById("username").value,
            birth: birth,
            address: document.getElementById("address").value,
            phone: phone,
            information: document.getElementById("information").value,
            category: category
         });
         saveImage(sessionStorage.getItem("id_users"), "edit");
    } else {
        sessionStorage.setItem("validation", "false");
    }
}

function deletePhoto(uid) {
    var storageRef = firebase.storage().ref();
    var storeRef = storageRef.child(uid + ".jpg");
    storeRef.delete().then(function () {
        $('#delete_modal').modal('hide');
        location.reload();
    }).catch(function (error) {
        alert(error);
    });
}

function deleteUser() {
    firebase.database().ref("Users/").child(sessionStorage.getItem("id_users")).remove().then(function () {
        deletePhoto(sessionStorage.getItem("id_users"));
    }).catch(function (error) {
        alert(error);
    });
}

function getAdministratorsData() {
    getSessionData();
    var database = firebase.database().ref('Users/').once('value').then(function (snapshot) {
        var content = "";
        snapshot.forEach(function (childX) {
            if (childX.child("type").val() === "administrator" && childX.key !== sessionStorage.getItem("id")) {
                content += "<tr>" + "<td>" + childX.child("dni").val() + "</td>" +
                        "<td>" + childX.child("name").val() + "</td>" +
                        "<td>" + childX.child("phone").val() + "</td>" +
                        '<td><a data-toggle="modal" href="#edit_invoice_report" class="btn btn-sm bg-success-light mr-2" onclick=setUserInfo("' + childX.key + '")> <i class="fe fe-pencil"></i> Edit</a>' +
                        '<a class="btn btn-sm bg-danger-light" data-toggle="modal" href="#delete_modal" onclick=storeUIDSelected("' + childX.key + '")>    <i class="fe fe-trash"></i> Delete </a></td>' +
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

function loadUserPhoto() {
    var uid = sessionStorage.getItem("id");
    var starsRef = firebase.storage().ref().child(uid + ".jpg").getDownloadURL().then(function (url) {
        document.getElementById('imagenU').src = url;
        document.getElementById('imagenU2').src = url;
    }).catch(function (error) {
        document.getElementById("error").innerHTML = error;
    });
}

function saveImage(uid, action) {
    var file = document.getElementById("new_profile_photo").files[0];
    var thisRef = firebase.storage().ref().child(uid + ".jpg");
    thisRef.put(file).then(function (snapshot) {
        window.location = "home.jsp";
    });
}

function addUsers() {
    var email = document.getElementById("email").value;
    var password = document.getElementById("password").value;
    var password_repeat = document.getElementById("password_repeat").value;
    var dni = document.getElementById("dni").value;
    var birth = document.getElementById("birth").value;
    var phone = document.getElementById("phone").value;
    var category = " ";
    if (document.getElementById("rol").value === "Student") {
        category = document.getElementById("student_selection").value;
    } else if (document.getElementById("rol").value === "Teacher") {
        category = document.getElementById("teacher_selection").value;
    }
    validatePass(password, password_repeat);
    validateDNI(dni, "");
    validateDate(birth);
    validatePhone(phone);

    if (sessionStorage.getItem("validation") === "true") {
        firebase.auth().createUserWithEmailAndPassword(email, password).then(function (snapshot) {
            firebase.database().ref('Users/' + snapshot.uid).set({
                dni: dni,
                name: document.getElementById("username").value,
                birth: birth,
                address: document.getElementById("address").value,
                phone: phone,
                information: document.getElementById("information").value,
                type: document.getElementById("rol").value.toLowerCase(),
                category: category
            }, function (error) {
                if (error)
                    alert(error);
                else
                    saveImage(snapshot.uid, "");
            });
        }).catch(function (error) {
            document.getElementById("email").style.borderColor = "red";
            document.getElementById("errorEmail").innerHTML = "Email is already in use.";
            sessionStorage.setItem("validation", "false");
        });
    } else {
        document.getElementById("email").style.borderColor = "";
        document.getElementById("errorEmail").innerHTML = "";
        sessionStorage.setItem("validation", "true");
    }
}

function selectRol() {
    var rol = document.getElementById("rol").value;
    if (rol === "Student") {
        document.getElementById("category_student").style.display = "flex";
        document.getElementById("category_teacher").style.display = "none";
    } else if (rol === "Teacher") {
        document.getElementById("category_student").style.display = "none";
        document.getElementById("category_teacher").style.display = "flex";
    } else if (rol === "Administrator") {
        document.getElementById("category_student").style.display = "none";
        document.getElementById("category_teacher").style.display = "none";
    }
}

function resetAddUserForm() {
    getSessionData();
    document.getElementById("category_student").style.display = "flex";
    document.getElementById("category_teacher").style.display = "none";
    document.getElementById("photo_preview").style.display = "none";
}


function validateDNI(dni, uid) {
    var ex_regular_dni = /^\d{8}[A-Z]$/;
    if (ex_regular_dni.test(dni) !== true) {
        document.getElementById("dni").style.borderColor = "red";
        document.getElementById("errorDNI").innerHTML = "Invalid DNI. Must have 8 digits and 1 letter.";
        sessionStorage.setItem("validation", "false");
    } else {
        firebase.database().ref("Users/").once('value', function (snapshot) {
            snapshot.forEach(function (childSnapshot) {
                if (childSnapshot.child("dni").val() === dni && childSnapshot.key !== uid) {
                    document.getElementById("dni").style.borderColor = "red";
                    document.getElementById("errorDNI").innerHTML = "There is already a registered user with that DNI";
                    sessionStorage.setItem("validation", "false");
                }
            });
        });
        document.getElementById("dni").style.borderColor = "";
        document.getElementById("errorDNI").innerHTML = "";
    }
}

function validateDate(date) {
    var ex_regular_date = /^([0-2][0-9]|3[0-1])(\/|-)(0[1-9]|1[0-2])\2(\d{4})(\s)?(([0-1][0-9]|2[0-3])(:)([0-5][0-9]))*/;
    if (ex_regular_date.test(date) !== true) {
        document.getElementById("birth").style.borderColor = "red";
        document.getElementById("errorDate").innerHTML = "Invalid birth data. Follow dd-MM-yyyy format.";
        sessionStorage.setItem("validation", "false");
    } else {
        document.getElementById("birth").style.borderColor = "";
        document.getElementById("errorDate").innerHTML = "";
    }
}

function validatePhone(phone) {
    var ex_regular_phone = /^[679]{1}[0-9]{8}$/;
    if (ex_regular_phone.test(phone) !== true) {
        document.getElementById("phone").style.borderColor = "red";
        document.getElementById("errorPhone").innerHTML = "Invalid data. Phone must have 9 digits.";
        sessionStorage.setItem("validation", "false");
    } else {
        document.getElementById("phone").style.borderColor = "";
        document.getElementById("errorPhone").innerHTML = "";
    }
}

function validatePass(password, password_repeat) {
    if (password !== password_repeat) {
        document.getElementById("password").style.borderColor = "red";
        document.getElementById("password_repeat").style.borderColor = "red";
        document.getElementById("errorPass").innerHTML = "Passwords do not match";
        sessionStorage.setItem("validation", "false");
    } else {
        document.getElementById("password").style.borderColor = "";
        document.getElementById("password_repeat").style.borderColor = "";
        document.getElementById("errorPass").innerHTML = "";
    }
}
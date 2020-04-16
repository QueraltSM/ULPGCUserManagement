firebase.auth().onAuthStateChanged(function (user) {
    if (user) {
        document.getElementById("demo").innerHTML = "<input type='button' onclick='logout()' value='Cerrar Sesión'>";
        var user = firebase.auth().currentUser;

        if (user !== null) {
            email = user.email;
            uid = user.uid;
            var name = "";
            var type = "";
            //console.log("Email: " + email);
            //console.log("UID: " + uid);
            var database = firebase.database().ref('Users/' + uid).once('value').then(function (snapshot) {
                name = snapshot.val().name;
                type = snapshot.val().type;
                document.getElementById("name").innerHTML = name;
                document.getElementById("type").innerHTML = type;
                
                if (type === "Administrator"){
                    window.location.replace("admin/home.jsp");
                }
            });
        }
    }
});

function login() {
    var email = document.getElementById("email").value;
    var password = document.getElementById("password").value;
    //document.getElementById("demo").innerHTML = email;
    firebase.auth().signInWithEmailAndPassword(email, password).catch(function (error) {
        var errorCode = error.code;
        var errorMessage = error.message;
        document.getElementById("error").innerHTML = errorMessage;
    });
}

function logout() {
    firebase.auth().signOut().then(function () {
        window.location.replace("index.jsp");
    }).catch(function (error) {
        var errorMessage = error.message;
        document.getElementById("error").innerHTML = errorMessage;
    });
}

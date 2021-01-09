var form = document.getElementById("login_form");

form.onsubmit = (e) => {
    var email = document.getElementById("email").value;
    var pwd = document.getElementById("password").value;

    var alert_email = document.getElementById("alert_email");
    var alert_pass = document.getElementById("alert_pass");

    var email_pattern = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;

    var proceed = true;

    if (!email_pattern.test(email)) {
        var alertHTML = "";
        if (email === "") {
            alertHTML += "Please enter Email Id<br>";
        } else {
            alertHTML += "Invalid Email Id<br>";
        }
        proceed = false;
        alert_email.innerHTML = alertHTML;
        alert_email.style.display = "block";
    } else {
        alert_email.style.display = "none";
    }

    if (pwd === "") {
        proceed = false;
        alert_pass.innerHTML = "Please enter Password<br>";
        alert_pass.style.display = "block";
    } else {
        alert_pass.style.display = "none";
    }

    if (!proceed) {
        e.preventDefault();
    } else {
        e.preventDefault();
        console.log("Successful Validation");
        var data={
        		email:document.getElementById("email").value,
        		password:document.getElementById("password").value
        }
        //  console.log(data)
//        document.getElementById("email").value = "";
//        document.getElementById("password").value = "";
        
        $.post("http://localhost:8080/second/LoginServe",data,(response)=>{
            console.log("Message Received from server successfully!")
            if(response ==="0"){
                proceed = false;
                alert_email.innerHTML = "Incorrect Email or Password ! <br>";
                alert_email.style.display = "block";
            }
            else{
                console.log(response)
                console.log("Redirecting to Index Page")
                window.location.href = "http://localhost:8080/second/index.jsp";

            }
        })
    }

    return proceed;
};
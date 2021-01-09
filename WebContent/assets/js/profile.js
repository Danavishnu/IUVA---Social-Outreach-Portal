window.onload= ()=>{
	$.get("http://localhost:8080/second/LoginStatus",null,(response)=>{
	    if(response == "0")
	    {
	    	alert("You need to be logged in to access this page.");
	    	window.location.href = "http://localhost:8080/second/login.jsp";
	    }
	})
}

var form = document.getElementById("profile_form");

form.onsubmit = (e) => {
    console.log("Profile Form Submitted")
    var email = document.getElementById("email").value;
    var first_name=document.getElementById("first_name").value;
    var last_name=document.getElementById("last_name").value;
    var user_name=document.getElementById("username").value;

    var alert_profile = document.getElementById("alert_profile");

    var email_pattern = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
    var name_pattern = /[a-zA-Z ]+/;
    var username_pattern = /[a-zA-Z0-9]{8,16}/;

    var proceed = true;
   

    if (!email_pattern.test(email)) {
        var alertHTML = "";
        if (email === "") {
            alertHTML += "Please enter Email Id<br>";
        } else {
            alertHTML += "Invalid Email Id<br>";
        }
        proceed = false;
        alert_profile.innerHTML = alertHTML;
        alert_profile.style.display = "block";
        
    } else {
        alert_profile.style.display = "none";
    }

    if (!name_pattern.test(first_name)) {
        alert_profile.innerHTML = "Error in First Name ";
        alert_profile.style.display = "block";
        proceed = false;
    }

    if (!name_pattern.test(last_name)) {
        alert_profile.innerHTML = "Error in Last Name ";
        alert_profile.style.display = "block";
        proceed = false;
    }

    if (!username_pattern.test(user_name)) {
        alert_profile.innerHTML = "Error in User Name ";
        alert_profile.style.display = "block";
        proceed = false;
    }

    if (!proceed) {
        e.preventDefault();
    } else {
        e.preventDefault();
        console.log("Successful Validation");
        var data={
                username:document.getElementById("username").value,
        		email:document.getElementById("email").value,
                first_name:document.getElementById("first_name").value,
                last_name:document.getElementById("last_name").value,
        }
        
        $.post("http://localhost:8080/second/ProfileDetailsServelet",data,(response)=>{
            console.log("Message Received from Profile Details Server for POST successfully!")
            if(response ==="0"){
                proceed = false;
                alert_profile.innerHTML = "There Has been some error , Please try Again !";
                alert_profile.style.display = "block";
            }
            else{
                console.log(response)
                alert("Details have been Successfully Updated !")
                window.location.reload();
            }
        })
    }

    return proceed;
};
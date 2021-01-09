var form = document.getElementById("register_form");
console.log("Hello")
form.onsubmit = (e) => {
	console.log("Vankkam");
    var pwd = document.getElementById("pwd").value;
    var cnf_pwd = document.getElementById("cnfpwd").value;
    var name = document.getElementById("first_name").value;
    var username = document.getElementById("username").value;

    var alert_element = document.getElementById("alert");
    var post_alert = document.getElementById("post_validation");

    var proceed = true;

    var name_pattern = /[a-zA-Z ]+/;
    var username_pattern = /[a-zA-Z0-9]{8,16}/;
    var pwd_pattern = /(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,16}/;

    if (!pwd_pattern.test(pwd)) {
        proceed = false;
    }

    if (!name_pattern.test(name)) {
        proceed = false;
    }

    if (!username_pattern.test(username)) {
        proceed = false;
    }

    if (cnf_pwd != pwd) {
        alert_element.innerHTML = "Repeat Password does not match Password <br>";
        alert_element.style.display = "block";
        document.getElementById("pwd").value = "";
        document.getElementById("cnfpwd").value = "";
        proceed = false;
        console.log("hi")
    }
    
    if (!proceed) {
        e.preventDefault();
        return false;
    } else {
        console.log("reached here")
        e.preventDefault();
        post_alert.style.display = "none";
        console.log("Successful Validation");
        var data={
                user_id: (Math.floor((Date.now() + Math.random())) % 10000007),
                username:document.getElementById("username").value,
                email:document.getElementById("email").value,
                password:document.getElementById("pwd").value,
                first_name:document.getElementById("first_name").value,
                last_name:document.getElementById("last_name").value,

        }
        $.post("http://localhost:8080/second/registerServelet",data,(response)=>{
            console.log("Message Received from server successfully!")
            if(response ==="0"){
                proceed = false;
                post_alert.innerHTML = "There has been some error , try again <br>";
                post_alert.style.display = "block";
            }
            else{
                alert("Details have been successfully added , please login to continue !")
                console.log(response)
                console.log("Redirecting to Index Page")
                window.location.href = "http://localhost:8080/second/login.jsp";

            }
        })
        // document.getElementById("pwd").value = "";
        // document.getElementById("cnfpwd").value = "";
        // document.getElementById("name").value = "";
        // document.getElementById("username").value = "";
    }

    return proceed;
};
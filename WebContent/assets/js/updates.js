window.onload= ()=>{
	console.log("chek logging in")
	$.get("http://localhost:8080/second/LoginStatus",null,(response)=>{
	    if(response == "0")
	    {
	    	alert("You need to be logged in to access this page.");
	    	window.location.href = "http://localhost:8080/second/login.jsp";
	    }
	})
}

var post_form = document.getElementById("new_blog_post");
console.log(post_form);
console.log("Helo");

post_form.onsubmit = (e) => {
    e.preventDefault();
    console.log("Post Form Submitted");

    var new_blog_title=document.getElementById("new_blog_title").value;
    var new_blog_content=document.getElementById("new_blog_content").value;

    var my_date = new Date();
    var day = my_date.getDate();
    var month = my_date.getMonth() + 1;
    var year = my_date.getFullYear();
        
    my_date = String(year) + String(month).padStart(2, "0") + String(day).padStart(2, "0");

    var proceed = true;

    if(new_blog_title === "" || new_blog_content === "")
    {
        proceed = false;
    }

    if(!proceed)
    {
        alert("Blog Title and Blog Content cannot be empty");
        return;
    }
    else
    {
        console.log("About to call the server....");
        var data = {
            date : my_date,
            post_title : new_blog_title,
            post_content : new_blog_content,
        }
        
        console.log(data);

        $.post("http://localhost:8080/second/UpdatesServelet",data,(response)=>{
            console.log("Message Received from Updates Server for POST successfully!")
            if(response ==="0"){
                proceed = false;
                alert("Internal Server Error... Please try again later");
            }
            else{
                console.log(response)
                alert("Blog has been successfully Posted !")
                window.location.reload();
            }
        })
    }
};
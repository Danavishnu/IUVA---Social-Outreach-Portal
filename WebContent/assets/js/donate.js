form = document.getElementById("payment_form");
box = document.getElementById("card_number");

cause_element = document.getElementById("cause");

$.get("http://localhost:8080/second/LoginStatus",null,(response)=>{
    if(response == "0")
    {
    	alert("You need to be logged in to access this page.");
    	window.location.href = "http://localhost:8080/second/login.jsp";
    }
})

//var options1 = [
//    { text: "Save the Girl Child", value: "save_child" },
//    { text: "Cauveri Calling", value: "cauveri" },
//    { text: "National Service Scheme", value: "nss" },
//    { text: "United By Vote", value: "vote" },
//    { text: "Powerless Queen", value: "queen" },
//];

var options;

$.get("http://localhost:8080/second/CausesServlet",null,(response)=>{
    console.log("Causes Received from server successfully!");
    options = JSON.parse(response)['causes'];
    for (var option of options) {
        var new_option = new Option(option.text, option.text);
        cause_element.append(new_option);
  }
  console.log(options);
})


form.onsubmit = (event) => {
    event.preventDefault();
    var value = document.getElementById("card_number").value;

    var card_number_pattern = /[0-9]{16}/;

    var valid = true;

    if (!card_number_pattern.test(value)) {
        valid = false;
    }

    var nCheck = 0,
        nDigit = 0,
        bEven = false;

    for (var n = value.length - 1; n >= 0; n--) {
        var cDigit = value.charAt(n),
            nDigit = parseInt(cDigit, 10);

        if (bEven) {
            if ((nDigit *= 2) > 9) nDigit -= 9;
        }

        nCheck += nDigit;
        bEven = !bEven;
    }

    valid = valid && nCheck % 10 == 0;

    if (valid) {
        alert("Card Number satisfies Luhn's algorithm");
    } else {
        alert("Card Number does not satisfy Luhn's algorithm");
    }

    if (valid) {
        var cause = document.getElementById("cause");
        var cause_id = options[cause.selectedIndex].cause_id;
        
        var my_date = new Date();
        var day = my_date.getDate();
        var month = my_date.getMonth() + 1;
        var year = my_date.getFullYear();
        
        my_date = String(year) + String(month).padStart(2, "0") + String(day).padStart(2, "0");
        
        cause = cause.options[cause.selectedIndex].text;

        var amount = document.getElementById("amount").value;

        String.prototype.format = function () {
            var s = this,
                i = arguments.length;

            while (i--) {
                s = s.replace(new RegExp("\\{" + i + "\\}", "gm"), arguments[i]);
            }
            return s;
        };

        var data_to_send = {cause_id: cause_id, amount: amount, date: my_date};
        
        $.post("http://localhost:8080/second/DonationServlet",data_to_send,(response)=>{
            console.log("Received Message from DonationServlet");
            if(response == "success")
            {
            	alert("You have donated Rs. {0} for {1}".format(amount, cause));
            	window.location.href = "http://localhost:8080/second/donate.jsp";
            }
            else
            {
            	alert("Something went wrong in the server... Please try again after some time");
            }
        })
        
        
    }

    return false;
};

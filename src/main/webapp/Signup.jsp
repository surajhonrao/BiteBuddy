<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register Yourself</title>
 <link rel="icon" type="image/webp"
        href="img/bitebuddy.png" style="border-radius:50%;">
<link rel="stylesheet" href="style.css">
<link rel="icon" style="border-radius: 50%;" type="image/webp"
        href="https://files.oaiusercontent.com/file-A6R42HcwGsrJjQAKrwvhtofK?se=2024-09-22T05%3A04%3A18Z&sp=r&sv=2024-08-04&sr=b&rscc=max-age%3D604800%2C%20immutable%2C%20private&rscd=attachment%3B%20filename%3D4ffb548e-3a9a-467c-9efb-b22f62dfee4f.webp&sig=W74lBmrRjTgGyrm3KqNAjdvbzTXzWTDQqufGYXEw/fI%3D">
         <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.min.js"></script>
</head>
<style>
/* General body styling */
body {
    margin: 0;
    padding: 0;
    height: 100vh;
    width: 100%;
    justify-content: center;
    align-items: center;
    font-family: 'Arial', sans-serif;
    background-color: #d57630; /* Background color */
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
}


* {
    box-sizing: border-box; 
}

/* Container for the form content */
 #content {
    border-radius: 8px;
    width:auto;
    display: flex;
   
} 

/* Form section styling */
#input {
    margin-left: 20px;
    display: flex;
    flex-direction: column;
     background-color: rgba(255, 255, 255, 0.9);
     overflow: hidden; 
     box-shadow:0px 0px 10px;
     border-radius:10px;
    padding: 20px; 
   margin:50px auto;
    height: 100%;
    width:500px; 
}

/* Input field styling */
input {
    height: 30px;
    width: 350px;
    border-radius: 5px;
    border: 1px solid #ccc; /* Default border color */
    margin-bottom: 10px; /* Adds space between the input fields */
    padding-left: 10px;  /* Padding for placeholder text */
}

/* Placeholder text color */
input::placeholder {
    color: #999;
}

/* Side image container styling */
#side_img { /* Ensures the image takes up the other half of the available space */
    display: block;
    max-width: auto;  /* Prevents the image from exceeding the container's width */
    object-fit: contain;  /* Ensures the image is properly contained within the box */
   
}

/* Button styling */
button {
    margin-left: 100px;
    width: 150px;
    height: 30px;
    background-color: #9b59b6;
    color: white;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    transition: background-color 0.3s ease, transform 0.3s ease;
}

/* Button hover effect */
button:hover {
    background-color: black;
    transform: scale(1.05);
}

/* Label styling */
label {
    padding-bottom: 2px;
    font-weight: bold;
}

/* Heading animation */
h2 {
    text-align: center;
    -webkit-animation: slideIn 1s ease-in-out;
    animation: slideIn 1.5s ease-in-out;
}

/* Keyframes for sliding animation */
@-webkit-keyframes slideIn {
    0% {
        opacity: 0;
        -webkit-transform: translateX(-100px);
    }
    100% {
        opacity: 1;
        -webkit-transform: translateX(0);
    }
}

/* Links styling */
a {
    text-decoration: none;
}

/* Paragraph margin for login text */
p {
    margin-left: 50px;
}

/* Error message styling for validation */
label.error {
    color: red;
    font-size: 12px;
    padding-left: 5px;
    display: block;
}

/* Error input field styling */
input.error {
    border: 1px solid red;
    background-color: #f8d7da;
}

/* Focused error input field styling */
input.error:focus {
    background-color: #f8d7da;
    border-color: #f5c6cb;
}

/* Focused valid input field styling */
input.valid:focus {
    background-color: #d4edda;
    border-color: green;
}
</style>
<body>

<% if (request.getAttribute("status") != null) { %>
    <div id="msg">
        <%= request.getAttribute("status") %>
    </div>
<%}%>

<div id="content">
 <div id="side_img">
        <img alt="" src="img/bg.webp" height="650px " width="800px" style="overflow: hidden;">   
    </div>
  <div id="input">
    <h2>Register Yourself..</h2>
    <form action="book" method="post" target="_parent" id="signup">
        <label>Name:</label><br>
        <input type="text" placeholder="Full Name" name="name" ><br><br>
        <label>Email ID:</label><br>
        <i class="bi bi-envelope-fill"></i>
        <input type="email" name="email" placeholder="Enter your Email" ><br><br>
        <label>Phone:</label><br>
        <input type="number" name="phone" placeholder="Enter your Phone Number"><br><br>
        <label>Password:</label><br>
        <input type="password" name="pin" placeholder="Enter your Password"><br><br>
        <button name="signup">Submit</button>
        <p>You Have Already Account ? <a href="login.jsp">Login Here</a> </p>
        
    </form>
    </div>
</div>

<%@ include file="footer.jsp" %>

<script type="text/javascript">
/* Query.validator.addMethod("checkemail", function(value, element) {
    return /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/.test(value) || /^[0-9]{10}$/.test(value);
}); */
jQuery(document).ready(function($) {
    $("#signup").validate({
        rules: {
            name: {
                required: true
            },
            email: {
                required: true,
                checkemail: true
            },
            phone: {
                required: true,
                minlength: 10,
                maxlength: 10
            },
            pin: {
                required: true,
                minlength: 6
            }
           },
        messages: {
            name: {
                required: "Please enter the name."
            },
            email: {
                required: "Please enter the email.",
                email: "Please enter a valid email ID."
            },
            phone: {
                required: "Please enter the phone number.",
                minlength: "Please enter a 10-digit phone number.",
                maxlength: "Phone number cannot exceed 10 digits."
            },
            pw: {
                required: "Please enter the password.",
                minlength: "Password must be at least 6 characters long."
        }
        }
    });
});
</script>
</body>
</html>


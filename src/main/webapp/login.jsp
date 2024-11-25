<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<link rel="icon" style="border-radius: 50%;" type="image/webp"
        href="https://files.oaiusercontent.com/file-A6R42HcwGsrJjQAKrwvhtofK?se=2024-09-22T05%3A04%3A18Z&sp=r&sv=2024-08-04&sr=b&rscc=max-age%3D604800%2C%20immutable%2C%20private&rscd=attachment%3B%20filename%3D4ffb548e-3a9a-467c-9efb-b22f62dfee4f.webp&sig=W74lBmrRjTgGyrm3KqNAjdvbzTXzWTDQqufGYXEw/fI%3D">
<link rel="stylesheet" href="style.css">
 <link rel="icon" type="image/webp"
        href="img/bitebuddy.png" style="border-radius:50%;">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</head>

<style>
	body {
       background-color: lightblue;
       background-size: cover;
	}
#section {
    justify-content: center;
    align-items: center;
}

input {
    height: 35px;
    width:300px;
    border-radius:5px;
    padding-left:15px;
   
    margin-bottom: 15px;
}

h3 {
    align-items: center;
    margin-bottom: 20px;
    font-weight: bold;
}
button {
    width: 150px;
    height: 35px;
    background-color: purple;
    margin-top: 10px;
    border: none;
    color: white;
    border-radius: 5px;
}
button:hover {
    background-color: black;
    transform: scale(1.10); 
    color: white;
    border-radius: 5px;
}
label {
    font-weight: bold;
    display: block;
}
#otp-box {
    display: flex;
    justify-content: space-between;
    width: 200px;
    background-color: none;
}

.otp-input {
    width: 35px;
    height: 40px;
    font-size: 18px;
    text-align: center;
    border: 1px solid green;
    border-radius: 5px;
    outline: none;
    background-color:none;
}
@media screen and (max-width: 600px) {
    .container {
        width: 100%;
        padding: 20px;
    }

    #otp-box {
        width: 100%; /* Ensure OTP box stays within the screen */
        justify-content: space-around;
    }

    input, button {
        width: 100%;
        max-width: 100%;
    }
}
#collection_card{
	background-image: url("https://b.zmtcdn.com/data/collections/2b9361aa328a43b08986f77bbec280bd_1709810493.png");
	height: 250px;
	width: 300px;
}
#msg{
 	width:300px;
 	height:30px;
 	text-align:center;
 	margin-left:600px;
 	background-color: gray;
}
#sestion2{
	height:400px;
 	width:700px;
	display: flex;
	margin: 45px 250px ;
	margin-bottom:50px;
	 margin-bottom: 50px;
	 border: 1px solid;
	 box-shadow: 0px 0px 10px;
	 border-radius: 5px;
}
#div4{
width: 	300px
}
.container{
	width:55%;
	height:400px;
	background-color: rgba(255, 255, 255, 0.9);
}
</style>

<body>
  <%@ include file="heder.jsp" %>
  
   <% if (session.getAttribute("status") != null) { %>
         <div id="msg"> <p><%= session.getAttribute("status") %></p> </div>
          <% session.removeAttribute("status"); %>
      <% } else {%>
        <% if (session.getAttribute("status1") != null) { %>
          <p><%= session.getAttribute("status1") %></p>
          <% session.removeAttribute("status1"); %>
      <% } %>
      <%} %>
  
  <section id="sestion2">
  <div id="div4">
  <img alt="" src="img/loj.png" height="400px" width="290px">
  </div>
  <div class="container">
    <form action="book" method="post" target="_parent">
    <h3>Welcome Back..</h3>
      <label for="email">Email:</label>
     <div class="input-group mb-3">
  <span class="input-group-text" id="basic-addon1" style="height:35px">✉️</span>
  <input type="text" class="form-control" placeholder="example@gmail.com" aria-label="Username" aria-describedby="basic-addon1" name="email" >
</div>
      <button name="generate" >Generate OTP</button>
    </form>
  <%if(session.getAttribute("otpGenerated") != null){ %>
    <!-- Display OTP input boxes only if OTP has been generated -->
    <div class="">
      <form action="book" method="post">
        <label for="pin">Enter OTP:</label>
        <div id="otp-box">
          <input type="text" maxlength="1" class="otp-input" name="pin1" required>
          <input type="text" maxlength="1" class="otp-input" name="pin2" required>
          <input type="text" maxlength="1" class="otp-input" name="pin3" required>
          <input type="text" maxlength="1" class="otp-input" name="pin4" required>
        </div>
        <p id="timer" style="color: red;"></p>
        <button name="login">Login</button>
      </form>
    </div>
    <%} %>
   <p style="margin-top:150px;"> 
    New On BiteBuddy? 
    <a href="Signup.jsp" style="text-decoration: none;">Create Account</a>
   </p>
</div>
</section>

<script>
	 const otpInputs = document.querySelectorAll('.otp-input');

  otpInputs.forEach((input, index) => {
    input.addEventListener('input', () => {
      // Move to the next input if there is a value and it's not the last input
      if (input.value.length === 1 && index < otpInputs.length - 1) {
        otpInputs[index + 1].focus();
      }
    });

    // Navigate to previous input if backspace is pressed and the input is empty
    input.addEventListener('keydown', (e) => {
      if (e.key === 'Backspace' && input.value.length === 0 && index > 0) {
        otpInputs[index - 1].focus();
      }
    });
  });


</script>
<%@ include file="footer.jsp" %>

</body>
</html>  

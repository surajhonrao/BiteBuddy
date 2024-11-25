at org.apache.jasper.compiler.DefaultErrorHandler.javacError(DefaultErrorHandler.java:81)
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="icon" type="image/webp"
        href="img/bitebuddy.png" style="border-radius:50%;">
</head>
<style>
  #section{
     margin: 0;
    padding: 0;
    height:80vh;
    width: 100%;
    justify-content: center;
    align-items: center;
    font-family: 'Arial', sans-serif;
    background-image: url("https://img.freepik.com/free-photo/street-chinese-food-with-copy-space_23-2148242502.jpg");
    background-color: rgba(255, 255, 255, 0.9);
    background-size: cover; 
    background-position: center;
    background-repeat: no-repeat;
  }
  #content{
   margin-left:700px;
    height:420px;
    width: 520px;
    align-items: center;
    box-shadow: 0px 0px 10px;
    padding-top: 20px;
    margin-bottom: 50px;
    margin-top:30px;
    background-color: rgba(255, 255, 255, 0.9);
    animation: type 2.5s steps(300) forwards;
    animation-iteration-count: 1;
    border-radius: 10px; 
    padding-left:30px;
  }
  h2{
 
  }
  input {
	height:35px;
	width:400px;
	border: none;
	text-decoration: none;
	margin-bottom: 15px;
	padding-left: 15px;
}
button {
	height: 30px;
	width: 150px;
	margin-left: 130px;
	background-color: orange;
	border: none;
	text-decoration: none;
}
button:hover{
   background-color:black;
    transform: scale(1.10); 
    color: white;
}
label {
	font-weight: bold;
}
#msg{
  color: green;
  margin-left:500px;
  text-align:center;
 width:500px;
 height: auto;
 box-shadow: 0px 0px 10px green;
}
#div {
	display: flex;
}
.fa-check-circle{
  margin-left: 
}
</style>
<body>
<section id="section">
   <%@ include file="heder.jsp" %>
<form action="book" method="post">
 <%if (request.getAttribute("status") !=null){ %>
<div id="div">
    <p id="msg">
        <%= request.getAttribute("status") != null ? request.getAttribute("status") : "" %>
        <% if ("success".equals(request.getAttribute("status"))) { %>
        <% } %>
    </p>
</div>
 <%} %> 
 <div id="content">
  <marquee behavior="alternate" scrollamount="5"> <h2>Add Item..</h2></marquee>
 <label>category:</label><br>
     <input type="text" name="category" placeholder="Enter the category of item"><br>
     <label>Url:</label><br>
     <input type="text" name="url" placeholder="Enter the Product Url"><br>
     <label>Prise:</label><br>
     <input type="text" name="prise" placeholder="Enter the prise of product" ><br>
     <label>Name:</label><br>
     <input type="text" name="name" placeholder="Enter the Product name"> <br><br>
     <button name="add">Add Item</button> 
     
 </div>
 
</form>
</section>
<%@ include file="footer.jsp" %>
</body>
</html>
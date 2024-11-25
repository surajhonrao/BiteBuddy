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
  <%@ include file="heder.jsp" %>
<style>
*{
	background-color:
}
#display_img{
height:450px;
width: 100%;
background-position: center;
background-size: cover;
background-position: fit;
}

section{
display: flex;
margin-top: 50px;
height: 500px;
}
section #div1{
width:35%;
height: 250px;
}
section #div2{
width:65%;
height: 250px;
}
#welcome{
height:340px;
width:500px;
border-radius: 35px;
}
#div2 h3{
	text-align: center;
}
#div2 p{
	font-weight: bold;
}
</style>
<body>
  <img id="display_img" alt="" src="https://c8.alamy.com/comp/2F2A5G7/indian-food-delivery-indian-cuisine-and-food-delivery-smartphone-apps-online-high-quality-photo-2F2A5G7.jpg">
  
  <section>
  <div id="div1">
  <img  id="welcome" alt="" src="https://files.oaiusercontent.com/file-cPcCg6naL8SaKy01ypVcpvvP?se=2024-10-20T09%3A02%3A48Z&sp=r&sv=2024-08-04&sr=b&rscc=max-age%3D604800%2C%20immutable%2C%20private&rscd=attachment%3B%20filename%3D28d27473-67e7-4cc2-a198-e40f6c2605e4.webp&sig=GFRe9zoz3/EKLwDK4zjNR/q8P186tPrHMwUFGQxN0%2BI%3D">
  </div>
  <div id="div2">
   <h3>About Us</h3>
    <p>"Bite Buddy," founded in 2024, is a modern online food delivery service led by CEO Suraj Honrao. At Bite Buddy, users can enjoy convenient online ordering and real-time order tracking, ensuring a seamless and satisfying dining experience. The company is backed by strong partnerships with Abhijit Rupnavar, Krutik S P, and Chandu, who are instrumental in driving the vision forward. With a focus on customer satisfaction, Bite Buddy aims to make every meal memorable and accessible at your fingertips. </p>
  <center> <h2>Developers</h2></center>
   <center> <div style="margin-top:50px; display: flex; gap:50px; margin-left:90px;" >
    
    	<div>
       <img alt="" src="img/CEO.jpg" height="150px" width="150px">
       <h4>Mr.Suraj Honrao</h4>
       <p>CEO</p>
       </div>
       <div>
       <img alt="Krutik img" src="img/CEO.jpg" height="150px" width="150px">
       <h4>Mr.Krutik S P</h4>
       </div>
       <div>
       <img alt="Krutik img" src="img/abhijit.jpg" height="150px" width="150px">
       <h4>Mr.Abhijit Rupnavar</h4>
       </div>
       <div>
       <img alt="Krutik img" src="img/CEO.jpg" height="150px" width="150px">
       <h4>Mr.Chandu s s</h4>
       </div>
    </div>
  </div>
  </center>
  </section>
  <footer>
  <img id="display_img" alt="" src="img/display.webp">
  </footer>
</body>
</html>
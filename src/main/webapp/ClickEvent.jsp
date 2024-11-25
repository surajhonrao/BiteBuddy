<%@page import="com.model.LiveEvents"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.Booking"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
  integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.rtl.min.css"
    integrity="sha384-dpuaG1suU0eT09tx5plTaGMLBsfDLzUCCUXOY2j/LSvXYuG6Bqs43ALlhIqAJVRb" crossorigin="anonymous">
</head>
<style>
body {
	background: linear-gradient(#4e4e4e,#797979,#262626);
	background-size: cover;
	background-attachment: fixed;
	margin: 0;
    padding: 0;
}
#img1{
	height:500px;
	width: 300px;
	border-radius: 10px;
	margin: 50px 200px;
}
#div1{
	background-color: white;
	width: 650px;
	margin: 50px -160px;
	border-radius: 10px;
}
#section1{
	display: flex;
	
}
#h21{
	font-size:2.5rem;
	padding-left: 15px;
	border-bottom:0.5px solid gray;
    padding-bottom: 10px;
     margin-bottom: 20px;
	 font-family: Georgia, serif;
}
#h22{
	padding-left: 15px;
	 font-family: Georgia, serif;
	 margin-top: 10px;
}
#h33{
	padding-left: 15px;
	 font-family: Georgia, serif;
	 margin-top: 10px;
}
#p1{
	padding-left: 15px;
 	font-weight: bold;
 	 font-family: Arial, sans-serif;
 	 color: gray;	
}
#p2{
	padding-left: 20px;
 	font-weight: bold;
 	 font-family: Arial, sans-serif;
 	 color: gray;	
 	 margin-top:15px;
 	 
 	 
	}
#div2{
	display: flex;
    margin-left:10px;
    border-radius:10px;
    height:50px;
	background-color: #f8f4f4;
	width:600px;
}
button {
	 background-color: yellow;
	 border-radius:10px;
	 margin-left:350px;
	 margin-top:7px;
	  height: 35px;
	  width: 150px;
	  font-weight: bold;
	   font-family: 'Courier New', monospace;
	    transition: transform 0.2s ease-in-out;
}
#p3{
	background-color: #f8f4f4;
	border-radius:10px;
	 margin-left:10px;
	 margin-right: 10px;
	 font-size:0.9rem;
}
footer {
    background: linear-gradient(to top, #4b0082, #000000);
    height: 100px;
    display: flex; 
    justify-content: center;
    color: white; 
   
}

#div3 {
    display: flex; 
    justify-content: center; 
    align-items: center;	
}

#btn {
    background-color: #ff6f61; 
    color: white; 
    border: none; 
    border-radius: 5px; 
    margin-left:130vh;
    width:150px;
    font-size: 16px; 
    cursor: pointer; 
    transition: background-color 0.3s ease; 
}

#btn:hover {
    background-color: #4b0082; 
}
#btn1{
 background-color: #6a0dad; 
    color: white; 
    border: none; 
    border-radius: 5px; 
    margin-left: 370px;
}
li img{
	 height:70px;
	 width: 100px;
	 background-position: center;
	 background-size: cover;
	 border-radius: 50%;
	}
	#home{
	margin: auto 500px;
	 list-style: none; 
	 font-family: 'Courier New', monospace;
	 font-weight: bold;
}
#home:hover{ 
	border-bottom: 3px solid red;
	color: yellow;
	cursor: pointer;	
}
#div4{
	background-color: white;
	width: 650px;
	margin: 50px -160px;
	border-radius: 10px;
}
#h24{
	font-size:2.5rem;
	padding-left: 15px;
	border-bottom:0.5px solid gray;
    padding-bottom: 10px;
     margin-bottom: 20px;
	 font-family: Georgia, serif;
}
#button2{
     width:100px;
	 background-color: #ff6f61; 
	 border:none;
}
#h26,#h25{
	padding-left: 15px;	
    padding-bottom: 10px;
    margin-bottom: 20px;
    font-family: Georgia, serif;
}
#div5{
	border-top:0.5px solid gray;
	padding-top:10px;
	margin:150px auto;
}

a{
 text-decoration: none;
 color: black;
 font-size: medium;
}
#div6 {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-color: rgba(0, 0, 0, 0.8); /* Black with opacity */
    display: flex;
    justify-content: center;
    align-items: center;
    z-index: 1000; /* Ensures it appears above other elements */
    display: none; /* Hidden by default */
   
}

/* Content inside the div */
#div6 > .content {
    background-color: white;
    padding: 20px;
    border-radius: 8px;
    text-align: center;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    width: 50%; /* Adjust width as needed */
    max-width: 500px; /* Limit maximum width */
    box-sizing: border-box;
     margin: 50px 250px;
}
</style>
<body>

		<nav > 
	         <ul style="display: flex;">
	         <li style="list-style: none;"><img alt="" src="img/liveevent.webp"> </li>
	         </ul>	
		</nav>
    <%
     Booking bk=new Booking(session);
    ArrayList<LiveEvents> al=bk.selectEvent(request.getParameter("id"));
    for(LiveEvents li:al){%>
    <section  id="section1">
    	<img alt="" src="<%= li.getImgurl()%>" id="img1">
    	<div id="div1">
    	<h2 id="h21"><%= li.getName() %></h2>
    	<p id="p1" style="padding-top: 10px"><i class="fa fa-calendar" style="margin-right: 10px;"></i></i></i><%=li.getDate() %></p>
    	<p id="p1"><i class="fa fa-clock-o" style="margin-right: 10px;"></i>4:00 PM-6:00PM</p>
    	<p id="p1" style="border-bottom: 0.5px solid gray; padding-bottom: 30px"> <i class="fa fa-map-marker" style="margin-right: 10px;"></i></i><%= li.getPlace() %></p>
       <div id="div2">
        <p id="p2"><%=li.getPrise() %>&#8377;</p>
        <button id="btn1" class="book-ticket">Book Tickets</button>
        </div>
        <h2 id="h22">About</h2>
        <p id="p3">Join our Event For Explore Life ! We’ll provide all the painting supplies, a delicious meal, and a chance to meet new friends. Our artists will help you create your own personalized Mason Jar, making it a fun and relaxing way to spend your afternoon. Come to Paint The Town Art Cafe for a creative experience filled with art, food, and great conversations. 🎨🍽️☕</p>
        <h2 id="h33">Term And Condition</h2>
        <ul>
        <li>Tickets once purchased/booked cannot be modified or cancelled. Refunds will be initiated only in case of event cancellation</li>
        <li>Please carry a valid ID proof to the event</li>
        <li>People in an inebriated state may not be allowed entry</li>
        <li>Organisers hold the right to deny late entry to the event. Hence, we recommend reaching the venue an hour before the event starts to ensure smooth entry</li>
      	<li>Terms of Singles, Couples and Kids entry are defined by the venue. We recommend calling the venue to confirm the same</li>
        </ul>
        <p id="p1">Nate:By continuing, you agree to the 
        <a href="#"> Terms & Conditions </a>
         </p>
    	</div>
    	
    	<div id="div4" style="display: none ;">
    	<h2 id="h24">Booking Detail..</h2>
    	<h2 id="h25">Welcome :<%=session.getAttribute("name") %></h2>
    	<div style="display: flex ;">
        <h2 id="h26"><%=li.getName() %></h2>
       <button id="button2" class="flex-button">
    <a href="#" id="plusbtn" style="margin-right: 10px;" onclick="increment(event)">+</a>
    <span id="countDisplay">1</span>
    <a href="#" style="margin-left: 10px;" id="minusbtn" onclick="decrement(event)">-</a>
</button> 
  </div>
        <div id="div5"> 
        <input type="hidden" value="<%= li.getPrise() %>" id="prise">
       <h3 id="totalPriceDisplay">Total Price: ₹<span id="priceValue"></span></h3>
        <button id="bookButton">Book Here</button>
        </div>
    	</div>
    	<div id="div6" style="display: none ;">
    <h2 style="color: white;">select the payment option</h2><br>
    <h2 style="color: white;">Phone Pe</h2>
  <input type="checkbox">
    	</div>
    	</section>
    	<footer >
    	<div id="div3">
    	 <button id="btn">Book Tickets</button>
    	 </div>
    	</footer>
    <%}
    %>
    
    <script type="text/javascript">
    document.addEventListener("DOMContentLoaded", () => {
        const bookButtons = document.querySelectorAll(".book-ticket");
        bookButtons.forEach(button => {
            button.addEventListener("click", (event) => {
                const section = event.target.closest("section");
                const div1 = section.querySelector("#div1");
                const div4 = section.querySelector("#div4");

                // Hide div1 and show div4
                if (div1) div1.style.display = "none";
                if (div4) div4.style.display = "block";
            });
        });
    });
    
    
    let count = 1;


    function initialize() {
        const finalPrise = document.getElementById("prise").value;
        document.getElementById("countDisplay").textContent = count;
        document.getElementById("priceValue").textContent = finalPrise;
    }

    function increment(event) {
        event.preventDefault();
        count++;
        updateDisplay();
    }

    function decrement(event) {
        event.preventDefault();
        if (count > 1) { // Ensure the count doesn't go below 1
            count--;
        }
        updateDisplay();
    }

    function updateDisplay() {
        const finalPrise = document.getElementById("prise").value;
        const totalPrice = count * finalPrise;
        document.getElementById("countDisplay").textContent = count;
        document.getElementById("priceValue").textContent = totalPrice;
    }
    
    // Call the initialize function on page load
    initialize();
     

    let div6=  document.getElementById("div6")
	let btn=  document.getElementById("bookButton")
	btn.addEventListener("click",()=>{
		div6.style.display="block"
	});	
	    </script>
</body>
</html>
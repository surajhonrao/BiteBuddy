<%@page import="com.model.Photes"%>
<%@page import="java.util.Iterator"%>
<%@page import="com.model.Dining"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.Booking"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="icon" type="image/webp"
        href="img/bitebuddy.png" style="border-radius:50%;">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<style>
#p2{
  border: 1px solid;
  border-radius: 5px;
  width:400px;
  padding-left:20px;
 color: ;
}
.button {
	height: 30px;
	width:150px;
	border-radius:7px;
	margin-bottom: 10px;
	cursor: pointer;
}
li{
	 cursor: pointer;
      padding: 5px;
	  transition: border-bottom 0.3s;
}
#div3{
	background-image: url("https://b.zmtcdn.com/data/reviews_photos/287/fe2aee442bd3bfde1fdf565a2eda3287_1708598238.jpg?fit=around%7C200%3A200&crop=200%3A200%3B%2A%2C%2A");
	height:350px;
	width: 200px;
	  margin-left: 2px;
      display: flex;
      justify-content: center; 
      align-items: center; 
      transition: transform 1.0s ease, background-color 1.3s ease;
}

#div3:hover {
    transform: scale(1.1); 
    background-color: black;
    color: white;
}
#Buttons{
	margin: 10px 150px;
}
 #Buttons button {
	margin-right: 15px;
	background-color: #ff6f61;
  padding: 10px 20px;
  color: black;
  font-family: 'Courier New', monospace;
  border: none;
  font-size: 15px;
  cursor: pointer;
  border-radius: 5px;
}
</style>
<body>
<%
	Booking bk=new Booking(session);
ArrayList<Dining> al=bk.fetchresturent(request.getParameter("id"));
Iterator<Dining> itr=al.iterator();
while(itr.hasNext()){
	Dining d=itr.next();
	%>
	<div style="margin: 50px 150px;">
	<section id="section1">
	<div style="display: flex; width:950px;">
    <h2 style="font-family: 'Courier New', monospace;"><%=d.getName()%></h2>
   <i class="fa fa-star" style="color:white; margin-left:500px; margin-top:20px; background-color: green; height:25px; width:50px; padding-top:2px;border-radius: 5px;"> 4.0</i><p style="margin-left: 10px;">998</p>
   
    </div>
     <p style=" margin-left:104vh; margin-top: -35px; border-bottom: 1px dotted; width: 100px;">Dining Rating</p>
    <h4 style="margin-top: -15px; font-family: 'Courier New', monospace" ><%=d.getCity() %></h4>
    <div style="display: flex;">
    <p id="p2">Closes 1 hour 20 Minutes -12:30 PM To 12:30AM</p>
     <p style="margin-left: 20px">&nbsp;|&nbsp; <%=d.getRent() %>&#8377;</p> 
  <p style="margin-top:15px; margin-right:15px;">&nbsp; |&nbsp;&nbsp; <i class="fa fa-phone"></i> +91 9307302496</p>
    </div>
    <div>
    <button class="button" style="font-size:20px;">Direction <i class="fa fa-map-marker" style="color:red"></i></button>
    <button class="button" style="font-size:20px">Share <i class="fa fa-share-alt" style="color:red"></i></button>
    <button class="button" style="font-size:20px">Review <span class="fa fa-star checked"style="color:red"></span></button>
   <button class="button" style="font-size:20px;" id="booknow">Table <i class="fa fa-check-circle" style="color:red"></i></button>
    </div>
    </section>
    <div style="display:flex">
    <div>
    <img alt="" src="<%=d.getD_url() %> " height="350px" width="750px" class="content">
    </div>
    <div style="margin-left:2px">
    <img alt="" src="https://b.zmtcdn.com/data/pictures/5/20399275/167d550083d4bb7caabd726acd6fa158.jpg?fit=around|300:273&crop=300:273;*,* " height="175px" width="200px" class="content"><br>
     <img alt="" src="https://b.zmtcdn.com/data/pictures/5/20399275/80d920abd3004541059b06b27fdde168.jpg?fit=around|300:273&crop=300:273;*,* " height="175px" width="200px" class="content">
    </div>
    <div id="div3">
      <a  style="color: white; margin-top: -30px ">View Gallery</a>
    </div>
    </div>

<%}%>

<nav>
  <ul id="ul" style="display: flex; list-style-type:none ; margin: 10px 50px; justify-content: space-between; width: 50%; border-bottom: 1.5px solid grey;cursor: pointer;" onmouseover="clickFunction()" >
    <li id="li">Overview</li>
     <li>Review</li>
     <li >Photos</li> 
      <li>Menu</li>
      <li id="bb" >Book Table</li> 
  </ul>
  </nav>
   <div id="event" style="display: none ;">
   <h2>Select Your Booking Detail</h2>
   <div>
	 <input id="date" type="date" style="height:35px; width:150px; padding-left:25px; font-weight: bold; color: black; border:none;font-family: 'Courier New', monospace">
  <select id="guests" style="height:35px; width:150px; padding-left:25px; font-weight: bold; color: black; border:none;font-family: 'Courier New', monospace">
	 <option>2 Guests</option>
	 <option>3 Guests</option>
	 <option>4 Guests</option>
	 <option>5 Guests</option>
	 <option>6 Guests</option>
	 <option>7 Guests</option>
	 <option>8 Guests</option>
	 <option>9 Guests</option>
	 <option>10 Guests</option>
	 <option>11 Guests</option>
	 <option>12 Guests</option>
	 <option>13 Guests</option>
   </select>
	   <select id="meal" style="height:35px; width:150px; padding-left:25px; font-weight: bold; color: black; border:none;font-family: 'Courier New', monospace">
	      <option>Lunch	
	      </option>	 
	      <option>Dinner</option>
	   </select>
     </div>
   <div>
 	<h2>Select Slot----------------------- </h2>
  		<select id="slot" style="height:35px; width:150px; padding-left:25px; font-weight: bold; color: black; border:none;font-family: 'Courier New', monospace">
  		  <option>12:30 PM</option>
  		  <option>1:30 PM</option>
  		  <option>2:30 PM</option>
  		  <option>3:30 PM</option>
  		  <option>4:30 PM</option>
  		  <option>5:30 PM</option>
  	      <option>6:30 PM</option>
          <option>7:30 PM</option>
  	      <option>8:30 PM</option>
  	      <option>9:30 PM</option>
  	      <option>10:30 PM</option>
  	      <option>11:30 PM</option>
  	      <option>12:30 AM</option>
  		</select>
     </div>
   <button onclick="proceedToCard()">Proceed To Card</button>
       <div id="confirmation-section" style="display:none; margin-top:20px;">
    		<p id="selected-data" style="font-weight: bold;"></p>
   		    <button onclick="confirmBooking()">Confirm Booking</button>
    </div>
  </div>
  
  <div id="div7" style="display:none ;">
  <%
    Booking b=new Booking(session);
    ArrayList<Photes> alt=b.select();
    Iterator<Photes>itrr=alt.iterator();
    while(itrr.hasNext()){
    	Photes p=itrr.next();%>
    	<img alt="" src="<%= p.getImg_url()%>" height="150px" width="150px">
  <% }%> 
  </div>
</div>
<script type="text/javascript">

    let option1=document.getElementById('bb');
    let option2=document.getElementById('event');
    option1.addEventListener('click',()=>{
    	option2.style.display="block";
    });
    
    let option3=document.getElementById('booknow');
    let option4=document.getElementById('event');
    option3.addEventListener('click',()=>{
    	option4.style.display="block";
    });
    function proceedToCard() {
    	  // Get selected values
    	  const date = document.getElementById('date').value;
    	  const guests = document.getElementById('guests').value;
    	  const meal = document.getElementById('meal').value;
    	  const slot = document.getElementById('slot').value;

    	  // Display selected data
    	  const dataDisplay = document.getElementById('selected-data');
    	  dataDisplay.innerText =` Date: ${date}, Guests: ${guests}, Meal: ${meal}, Slot: ${slot}`;

    	  // Show confirmation section
    	  document.getElementById('confirmation-section').style.display = 'block';
    	}

    	function confirmBooking() {
    	  alert('Booking Confirmed!');
    	}
    	
    	 function clickFunction() {
             let items = document.querySelectorAll('#ul li');

             // Loop through each <li> and add event listeners
             items.forEach(function(item) {
                 item.addEventListener('click', function() {
                     // Reset styles on all items first
                     items.forEach(function(li) {
                         li.style.color = ""; // Reset color
                         li.style.borderBottom = ""; // Reset border
                     });

                     // Now apply styles to the clicked <li>
                     item.style.color = "red";
                     item.style.borderBottom = "1px solid red"; // Set red bottom border
                 });
             });
         }
    	 function button() {
			
		}
    	 
    	    
    	 
</script>
</body>
</html>
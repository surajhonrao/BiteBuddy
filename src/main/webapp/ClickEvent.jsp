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
	width: 750px;
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
#div6{
	padding-top:10px;
	margin:50px -160px;
	background-color:rgba(255, 255, 255, 0.9);
	border-radius:10px;
	box-shadow:0px 0px 10px;
	width: 600px;
	
}
#imgdiv{
	margin-left: 50px;
}
#paylogo1,#paylogo2,#paylogo3,#paylogo4{
	margin-right: 15px;
}
#input1{
	height:35px;
	width: 350px;
	border-radius:5px;
}
#card-section {
    display: none;
    flex-direction: column;
    align-items: flex-start;
    padding: 20px;
    background-color: #f9f9f9;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    width: 100%; 
    max-width: 400px;
    margin: 0 auto; 
}

#card-section label {
    font-size: 1rem;
    font-weight: bold;
    margin-bottom: 5px;
    display: block; 
    font-family: Arial, sans-serif;
}

#card-section input {
    width: 100%; 
    height: 40px;
    margin-bottom: 15px;
    border: 1px solid #ccc;
    border-radius: 5px;
    padding: 10px;
    font-size: 1rem;
    box-sizing: border-box;
}

#card-section input:focus {
    border-color: #4b0082;
    outline: none;
    box-shadow: 0 0 5px rgba(75, 0, 130, 0.5);
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
    <a href="#" style="margin-left: 10px; height:20px" id="minusbtn" onclick="decrement(event)" >-</a>
</button> 
  </div>
        <div id="div5"> 
        <input type="hidden" value="<%= li.getPrise() %>" id="prise">
       <h3 id="totalPriceDisplay">Total Price: ₹<span id="priceValue" name="totalprise"></span></h3>
        <button id="bookButton">Book Here</button>
        </div>
    	</div>
    	<div id="div6" style="display: none;">
    <h4 style="color: black; padding-left: 10px">Select the payment option</h4><br>
    <div id="imgdiv" style="display: flex; gap: 15px;">
        <img alt="PhonePe" id="paylogo1" src="https://uxwing.com/wp-content/themes/uxwing/download/brands-and-social-media/phonepe-icon.png" height="30px" width="30px" style="cursor: pointer;">
        <img alt="Google Pay" id="paylogo2" src="https://img.icons8.com/?size=48&id=am4ltuIYDpQ5&format=png" height="30px" width="30px" style="cursor: pointer;">
        <img alt="Paytm" id="paylogo3" src="https://img.icons8.com/?size=80&id=Aub11Fs5DJVg&format=png" height="30px" width="30px" style="cursor: pointer;">
        <img alt="Credit/Debit Card" id="paylogo4" src="https://img.icons8.com/?size=48&id=1AzdGyrT9jI0&format=png" height="30px" width="30px" style="cursor: pointer;">
    </div>

    <div id="payment-form" style="display: none; margin-top: 20px;">
        <h5>Enter Payment Details:</h5>
            <div id="upi-section" style="display: none;">
                <label for="upiId">UPI ID:</label>
                <input id="upiId" type="text" placeholder="Example: 1234567890@upi" required>
            </div>
            <div id="card-section" style="display: none;">
                <label for="cardNumber">Card Number:</label>
                <input id="cardNumber" type="text" placeholder="Card Number" required>
                <label for="expiryDate">Expiry Date:</label>
                <input id="expiryDate" type="month" required>
                   <label for="cvv">CW</label>
                <input id="cvv" type="password" placeholder="CVV" required>
            </div>
             <form  action="book" method="post">
             	<input type="hidden" name="eventName" value="<%=li.getName() %>">
             	 <input type="hidden" value="<%= li.getPrise() %>" id="prise" name="totalprise">
            <button  name="paynow">Pay Now</button>
        </form>
    </div>
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
    
    document.addEventListener("DOMContentLoaded", () => {
        const bookButtons = document.querySelectorAll("#bookButton");
        bookButtons.forEach(button => {
            button.addEventListener("click", (event) => {
                const section1 = event.target.closest("section");
                const div1 = section1.querySelector("#div4");
                const div4 = section1.querySelector("#div6");

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

    let btnn=  document.getElementById("paylogo1")
	let div7=  document.getElementById("div7")
	btnn.addEventListener("click",()=>{
		div7.style.display="block"
	});	
    
    document.addEventListener("DOMContentLoaded", () => {
        const paymentMethods = {
            "paylogo1": "upi-section",
            "paylogo2": "upi-section",
            "paylogo3": "upi-section",
            "paylogo4": "card-section"
        };

        document.querySelectorAll("#imgdiv img").forEach(logo => {
            logo.addEventListener("click", () => {
                const selectedSection = paymentMethods[logo.id];
                document.querySelectorAll("#payment-form div").forEach(div => div.style.display = "none");
                if (selectedSection) {
                    document.getElementById(selectedSection).style.display = "block";
                }
                document.getElementById("payment-form").style.display = "block";
            });
        });
    });

    function processPayment() {
        const upiId = document.getElementById("upiId").value;
        const cardNumber = document.getElementById("cardNumber").value;

        if ((upiId && document.getElementById("upi-section").style.display === "block") ||
            (cardNumber && document.getElementById("card-section").style.display === "block")) {
            alert("Payment Successful! Event Booked Successfully. Thank You!");
            // Redirect or additional logic can be added here.
        } else {
            alert("Please fill in the required payment details.");
        }
    }

	    </script>
</body>
</html>
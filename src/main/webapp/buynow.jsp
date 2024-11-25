<%@page import="com.model.buynow"%>
<%@page import="java.util.Iterator"%>
<%@page import="com.model.Booking"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Confirm Your Order</title>
     <link rel="icon" type="image/webp"
        href="img/bitebuddy.png" style="border-radius:50%;">
</head>
<%@ include file="heder.jsp" %>
 <style>
        body {
            font-family: Arial, sans-serif;
            background-color: whitesmoke;
        }
        h1 {
            text-align: center;
            color: #333;
        }
        table {
            width: 100%;
            border:none;
            text-decoration:none;
            margin: 20px 0;
            font-size: 18px;
            text-align: left;
        }
        th, td {
            padding: 12px;
            border: 1px solid #ddd;
        }
        th {
            background-color: #f4f4f4;
            color: #333;
        }
        tbody tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        tbody tr:hover {
            background-color: #f1f1f1;
        }
        img {
            border-radius: 8px;
            object-fit: cover;
        }
        button {
            background-color: #f44336;
            color: white;
            padding: 8px 16px;
            border: none;
            cursor: pointer;
            border-radius: 5px;
            font-size: 16px;
        }
        button:hover {
            background-color: #d32f2f;
        }
        p{
        background-color: purple;
        height:50px;
       	padding-top: 20px;
       	color: white;
       	font-weight: bold;
        
        }
        #p{
        background-color:white;
        color: black;
        
        }
        #options{
        width:50%;
         margin-top: 25px;
         margin-left: 250px;
         justify-content: space-between;
         padding-left: 25px;
         
        }
        #input_section{
        margin-left:350px;
        margin-top:50px;
        width: 450px;
        height: 350px;
        box-shadow: 0px 0px 10px; 
        padding-top: 30px;
        padding-left: 25px;
        border-radius: 5px;
        background-color: rgba(255, 255, 255, 0.9);
      
        }
        input {
		width:400px;
		height:30px;
		border-radius:5px;
		}
		#btn{
		margin-left: 150px;
		margin-top:20px;
		}
		#img0{
		object-fit: cover;
    border-radius: 5px;
		}
</style>
<body>
    <h1>Confirm Your Order</h1>
    <p>Product details:</p>
    <% 
   
    Booking booking = new Booking(session);
    ArrayList<buynow> buyNowList = booking.buynow(request.getParameter("bay"));
    if (buyNowList == null || buyNowList.isEmpty()) {
        out.println("No items in the list. Please check the session or request parameters.");
    } else {
        Iterator<buynow> itr = buyNowList.iterator();
        while (itr.hasNext()) {
        	buynow product = itr.next();
    %>
    <table>
    <thead>
    <tr>
    <th>Product</th>
    <th>name</th>
    <th>Category</th>
    <th>Prise</th>
    
    </tr>
    </thead>
    <tbody>
         <tr>
         <td><img id="img0" src="<%= product.getP_url() %>" alt="Product Image" height="150px" width="250px"><br></td>
         <td ><%= product.getP_name() %></td>
         <td><%= product.getP_category() %></td>
         <td> <%= product.getP_prise() %></td>
         </tr>
    </tbody>
    </table>
    
<button id="confirm-order">Confirm Order</button>

<div id="options" style="display:none;">
  <button id="input_detail">Cash on Delivery</button>
  <button id="net_banking">Net Banking</button>
</div>
<form action="book" method="post">
<div id="input_section" style="display: none">
  <label>Enter the Address</label><br>
  <input type="text" placeholder="Enter Your Address" id="address" required="required"><br><br>
  
  <label>Enter The City</label><br>
  <input type="text" placeholder="Enter The City" id="city" required="required"><br><br>
  
  <label>Enter the Pincode</label><br>
  <input type="number" placeholder="Enter the Pin Code" id="pincode" required="required"><br><br>
   <label>Enter the Phone</label><br>
  <input type="number" placeholder="Enter the Phone Number" id="phone" required="required"><br><br>
  <input name="purl" value="<%= product.getP_url()%>" type="hidden">
    <input name="pname" value="<%= product.getP_name()%>" type="hidden">
      <input name="prise" value="<%= product.getP_prise()%>" type="hidden">
        <input name="pid" value="<%= product.getP_prise()%>" type="hidden">
  <button id="btn" name="buy">Buy Now</button>
</div>
   </form>
    <% 
        } 
    }
    %>
    <script type="">

    let option1=document.getElementById('confirm-order');
	 let option2=document.getElementById('options');
     option1.addEventListener('click', ()=>{
         option2.style.display="block";
     });
 
	let option3 = document.getElementById('input_detail');     
  let option4 = document.getElementById('input_section');      

  option3.addEventListener('click', () => {
    option4.style.display = 'block'; 
  });
</script>
</body>
</html>

<%@page import="com.model.myorder"%>
<%@page import="java.util.Iterator"%>
<%@page import="com.model.myorder"%>
<%@page import="com.model.Booking"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Order Details</title>
 <link rel="icon" type="image/webp"
        href="img/bitebuddy.png" style="border-radius:50%;">
</head>
 <%@ include file="heder.jsp" %>
<style>
	#display_img {
    max-width: 100%;
    max-height: 150px;
    height: auto;
    width: 200px;
    object-fit: cover;  /* Ensures the image is cropped proportionally */
    border-radius: 5px; /* Optional: adds a slight border radius for a cleaner look */
}
	#table{
	width: 100%;
	border: none;
	text-decoration: none;
	background-color: rgba(255, 255, 255, 0.9);
	}
	th {
	height: 50px;
	background-color: purple;
	color: white;
	}
	
	 td:hover{
	background-color: #e6e6fa;
 	}
 	tbody {
	height: 100px;
	width:100px; 
}
</style>

<body>
<%
if(session.getAttribute("name") != null) {
    Booking bk = new Booking(session);
    ArrayList<myorder> orderList = bk.myorder();
    
    if(orderList != null && !orderList.isEmpty()) {
        Iterator<myorder> itr = orderList.iterator();
%>
<h2>My Orders</h2>
    <table border="1" id="table">
        <thead>
            <tr>
                <th>Product</th>
                <th>Name</th>
                <th>Price</th>
                <th>Status</th>
            </tr>
        </thead>
        <tbody>
<%
        while(itr.hasNext()) {
            myorder m = itr.next();
%>
            <tr>
                <td><img id="display_img" alt="Product Image" src="<%= m.getP_url() %>"></td>
                <td><p><%= m.getP_name() %></p></td>
                <td><p><%= m.getP_prise() %></p></td>
                <td>Ordered</td>
            </tr>
<%
        }
%>
        </tbody>
    </table>
<%
    } else {
%>
    <p>No orders found.</p>
<%
    }
}
%>
</body>
</html>

<%@page import="com.model.custmore"%>
<%@page import="java.util.Iterator"%>
<%@page import="com.model.dproduct"%>
<%@page import="java.util.ArrayList"%>
<%@ page import="com.model.Booking" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product Information</title>
 <link rel="icon" type="image/webp"
        href="img/bitebuddy.png" style="border-radius:50%;">
</head>
<style>
body {
    margin: 0;
    padding: 0;
    height: 100vh;
    width: 100%;
    background: linear-gradient(#d57630, #d57630);
    justify-content: center;
    align-items: center;
    font-family: 'Arial', sans-serif;
    background-color: #d57630; 
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
    justify-content: space-between;
}
 #mi {
    height:250px;
    width:100%;
    display: flex;
    background-color: rgba(255, 255, 255, 0.9);
    margin-bottom:2px;
    border-radius:5px;
    padding: 20px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); 
 }
 #d2 img {
    height: 200px;
    width: 250px;
    background-position: center;
    background-origin: cover;  
 }
 #d3 {
    margin-left:100px;
 }
 #d3 button {
    width: 200px;
    height: 30px;
    background-color: #f94b64;
    border-radius: 5px;
    border: none;
    transition: background-color 0.3s ease;
}
#d3 button:hover {
    background-color: #218838; 
}
a {
    text-decoration: none;
    color: black;
}
#d3 #btn {
    background-color: #28a745;
    border: none;
    border-radius: 5px;
    font-size: 16px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}
#d3 #btn:hover {
    background-color: #218838; 
}
.fa-heart-o {
    font-size: 24px;
    color: gray;
    cursor: pointer;
}
.fa-heart {
    color: red;
}
</style>
<%@ include file="heder.jsp" %>
<body>
<%
custmore c = new custmore();
Booking bk = new Booking(session);
ArrayList<dproduct> al = bk.productinfo(request.getParameter("animal"));

if (al.isEmpty()) {
%>
    <div id="mi">
        <div id="d3">
            <h2>No Results Found</h2>
            <p>We couldn't find any products matching your search criteria. Please try again with a different search.</p>
            <button id="btn"><a href="Home.jsp">Back to Search</a></button>
        </div>
    </div>
<%
} else {
    Iterator<dproduct> itr = al.iterator();
    while (itr.hasNext()) {
        dproduct d = itr.next();
%>
        <div id="mi"> 
            <div id="d2">
                <img alt="" src="<%= d.getP_url() %>">
            </div>
            <div id="d3">
                <h2><%= d.getName() %></h2>
                <p>&#8377;<%= d.getP_prise() %></p>
                <b><p>"Bursting with garden-fresh toppings, our Veg Pizza is the perfect choice for a guilt-free indulgence."</p></b>
                <% if (session.getAttribute("name") != null) { %>
                    <form action="book" method="post">
                        <input type="hidden" name="p_id" value="<%= d.getP_id() %>">
                        <input type="hidden" name="c_id" value="<%= session.getAttribute("id")%>">
                        <button name="buynow">Buy Now</button><br><br>
                        <button id="btn" name="addcart">Add To Cart</button>
                        
                    </form>
          <%-- 
    <form action="book" method="post">
        <div style="display: flex;">
            <input type="hidden" name="id" value="<%= d.getP_id()%>">
            <input type="hidden" name="click">
            <i class="fa fa-heart-o" style="margin-left:250px; display: flex; border: 1px solid red"></i>
        </div>
    </form> 
--%>
                <% } else { %>
                    <a href="login.jsp">Login to Buy</a>
                <% } %>
            </div>
        </div>
<%
    }
}
%>
<%@ include file="footer.jsp" %>
</body>
</html>

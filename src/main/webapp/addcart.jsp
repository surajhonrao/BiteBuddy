<%@page import="com.model.dproduct"%>
<%@page import="java.awt.Image"%>
<%@page import="java.util.Iterator"%>
<%@page import="com.model.addtocart"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.Booking"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cart Items</title>
 <link rel="icon" type="image/webp"
        href="img/bitebuddy.png" style="border-radius:50%;">
</head>
<body>
<%
if(session.getAttribute("name") != null){
    dproduct d=new dproduct();
    Booking bk = new Booking(session); 
    ArrayList<addtocart> al = bk.addtocart(request.getParameter("add"));
    Iterator<addtocart> itr = al.iterator();
    
    while (itr.hasNext()) {
        addtocart ad = itr.next();
%>
        <div>
            <form action="book" method="post">
                <!-- p_id should contain the value, assuming ad has a getP_id method -->
                <input type="hidden" name="p_id" value="<%= d.getP_id() %>">
                
                <!-- Display the product image -->
                <img alt="Product Image" src="<%= ad.getP_url() %>" />
                
                <div>
                    <!-- Display the product category and price -->
                    <h2><%= ad.getP_category() %></h2>
                    <p>Price: <%= ad.getP_prise() %></p>
                    
                    <!-- Submit button for booking -->
                    <input type="submit" value="Buy Now">
                </div>
            </form>
        </div>
<%
    } // end of while
} else {
    out.println("Please log in to view your cart.");
}
%>
</body>
</html>

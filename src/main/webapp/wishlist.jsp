<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.Booking"%>
<%@page import="com.model.dproduct"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Wishlist</title>
 <link rel="icon" type="image/webp"
        href="img/bitebuddy.png" style="border-radius:50%;">
</head>
<style>
#main {
    display: flex;
    margin-bottom: 20px;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
    width: 300px;
}
#main img {
    margin-right: 10px;
}
</style>
<body>

<% if (session.getAttribute("name") != null) {
    Booking bk = new Booking(session);
    ArrayList<dproduct> al = bk.wishlist(request.getParameter("list"));
    Iterator<dproduct> itr = al.iterator();
    
    if (al.isEmpty()) {
%>
    <h3>No items in your wishlist</h3>
<% 
    } else {
%>
    <h3>My Wishlist</h3>
<%
        while (itr.hasNext()) {
            dproduct d = itr.next();
%>
    <div id="main">
        <div>
            <img alt="" src="<%= d.getP_url() %>" height="100px" width="100px">
        </div>
        <div>
            <h2><%= d.getName() %></h2>
            <p>Price: &#8377;<%= d.getP_prise() %></p>
        </div>
    </div>
<%
        }
    }
} else {
%>
    <h3>Please <a href="login.jsp">login</a> to view your wishlist.</h3>
<%
}
%>

</body>
</html>

<%@page import="java.util.Iterator"%>
<%@page import="com.model.dproduct"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.Booking"%>
<%@ page import="java.util.List" %>
<%@ page import="com.model.fetch" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 <link rel="icon" type="image/webp"
        href="img/bitebuddy.png" style="border-radius:50%;">
<style>
table {
    width: 100%;
    margin: 20px 0;
    font-size: 18px;
    text-align: left;
    border-collapse: collapse;
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
    height: 100px;
    max-width: 100%;
}
button {
	background-color: orange;
	height:30px;
	width: 150px;
	border-radius: 10px;
	align-items: center;
}
    </style>
</head>
<body>
  <%@ include file="heder.jsp" %>
   <%
   Booking bk=new Booking(session);
   ArrayList <dproduct> al=bk.retrive(request.getParameter("click"));
	   %>
	   <table>	
	   <thead>
	   <tr>
	     <th>id</th>
	     <th>Name</th>
	     <th>Product</th>
	     <th>prise</th>
	     <th>Buy Now </th>
	     </tr>
	   </thead>
	   <tbody>
	   <%for(dproduct d:al){ %>
	   <tr> 
	   <td> <%=d.getP_id() %></td>
	   <td><%=d.getName() %></td>
	   <td><img alt="" src=<%=d.getP_url() %>></td>
	   <td> <%=d.getP_prise() %></td>
	   <td><a href="buynow.jsp"><button>Click To Buy</button> </a></td>
	   </tr>
   <%}%>
     </tbody>
	   </table>
</body>
</html>

<%@ page import="com.model.Dining"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="com.model.Booking"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Explore Dining</title>
     <link rel="icon" type="image/webp"
        href="img/bitebuddy.png" style="border-radius:50%;">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
    <style>
        /* Container div to control grid layout */
        .dining-container {
            width: 90%;
            display: flex;
            flex-wrap: wrap;
            gap: 22px;
            margin: 20px auto;
            justify-content: center;
        }
                /* Individual dining item styling */
    .dining-item {
    flex: 1 1 calc(33.33% - 16px);
    box-sizing: border-box;
    box-shadow: 0px 0px 7px rgba(0, 0, 0, 0.1);
    padding: 16px;
    text-align: center;
    border-radius: 10px;
    background-color: #fff;
    margin-bottom: 20px;
    transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.dining-item:hover {
    transform: translateY(-10px);
    box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.2);
}

.details h3 {
    font-size: 20px;
    font-weight: bold;
    color: #333;
    margin-top: 10px;
}

.details p {
    font-size: 18px;
    color: #ff5733;
    margin: 5px 0;
}

.city {
    font-size: 14px;
    color: #777;
    display: flex;
    align-items: center;
    justify-content: center;
}

.city i {
    margin-right: 5px;
    color: #ff5733;
}

/* Flex container for dining items */
.dining-container {
    display: flex;
    flex-wrap: wrap;
    gap: 20px;
    justify-content: center;
    margin: 20px auto;
}
.form-control{
 	height: 25px;
 	width:300px;
 	border-radius:5px;
}
.form-control::placeholder{
	padding-left:15px;
	font-weight: bold;
	 font-family: 'Courier New', monospace;
}
.group-text{
height: 20px;
}

button {
background-color: #ff6f61;
  padding: 10px 20px;
  color: white;
  border: none;
  font-size: 15px;
  cursor: pointer;
  border-radius: 5px;
  margin: 10px 80px;
}
    </style>
</head>
<body>
    <%@ include file="heder.jsp" %>
    <img alt="Header Image" src="https://b.zmtcdn.com/data/o2_assets/e067a1cf0d3fe27b366402b98b994e9f1716296909.png" width="100%">
    <h3 style="text-align: stress; margin-top:20px; margin-bottom:40px;">Explore The Restaurants...</h3>
    <div style="margin:50px 300px;">
    <form action="book" method="post" target="_parent">
   <label>Chose Your City..</label><br><br>
  <div class="input-group mb-3" style="background-color:background-color: rgba(255, 255, 255, 0.9);width: 350px;">
  <span class="input-group-text" id="basic-addon1">👨‍🍳</span>
  <input type="text" class="form-control" placeholder="Select Your City" aria-label="Username" aria-describedby="basic-addon1" name="city" id="City">
</div>
  
 <button name="serchcity" style="cursor: pointer">Search Here</button>
    </form>
    </div>
    <div class="dining-container">
        <%
            Booking bk = new Booking(session);
            ArrayList<Dining> itr = bk.fetchdining(request.getParameter("cheak"));
            for (Dining d : itr) {
        %>

    <div class="dining-item">
    <div>
      <a href="resturent.jsp?id=<%=d.getId()%>" style="text-decoration: none">    <img alt="Dining Image" src="<%=d.getD_url() %>" height="200px" width="100%" style="object-fit: cover; border-radius: 8px;"></a>
    </div>
    <div class="details">
    <input type="hidden" value="<%= d.getId()%>">
        <h3 style="font-size: 20px; font-weight: bold; margin-top: 10px; color: #333;"><%=d.getName() %></h3>
        <p style="font-size: 18px; color: #ff5733; margin: 5px 0;"><%=d.getRent() %> &#8377;</p>
    </div>
    <p class="city" style="font-size: 14px; color: #777; display: flex; align-items: center; justify-content: center;">
        <i class="fa fa-map-marker" style="margin-right: 5px; color: #ff5733;"></i><%=d.getCity() %>  <i class="fa fa-star" style="color: #ffcc00; margin-left: 10px;"></i>
    </p>
</div>

        <% } %>
    </div>
    
    <script type="text/javascript">
   
    </script>
</body>
</html>

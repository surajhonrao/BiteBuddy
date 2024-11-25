<%@page import="java.util.Iterator"%>
<%@page import="com.model.LiveEvents"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.Booking"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Explore Live Events</title>
 <link rel="icon" type="image/webp"
        href="img/bitebuddy.png" style="border-radius:50%;">
</head>
<style>
body{
 background-color: #29282d;
 background-size: cover;
}
#div2{
    border: 1px solid #ccc;
	 padding: 10px; 
	 border-radius: 8px;
	 text-align: center;
	  width: 400px;
	  background: linear-gradient(to right, black,purple);
	   transition: transform 0.5s ease-in-out;
}
#div2:hover{
	 transform: scale(0.9);
	 cursor: pointer; 
	}
	#div1{
	margin: 50px; 
	display: flex;
	flex-wrap: wrap; 
	color: #ADD8E6;
	gap: 20px; 
	justify-content: center;
	  background-position: center;
	   font-family: Arial, sans-serif;
	}
	#img1{
	height: 200px;
	 width:250px;
	  object-fit: cover; 
	  border-radius: 4px;
	position: relative;
	
	}
	
	li img{
	 height:70px;
	 width: 100px;
	 background-position: center;
	 background-size: cover;
	 border-radius: 50%;
	}
	  nav #div1{
	  margin:00px 100px;
	  }   
	input {
	  height: 70px;
	  width: 300px;
	  background-color: #29282d;
	  color: white;
	  font-weight: bold;
	  padding-left:30px;
	  text-decoration: none;
	  border: none;
	  font-size: large;
	  list-style:none;
	  font-family: 'Courier New', monospace;
}
button {
	 background-color: yellow;
	 border-radius:10px;
	  height: 35px;
	  width: 100px;
	  font-weight: bold;
	   font-family: 'Courier New', monospace;
	    transition: transform 0.2s ease-in-out;
}
button:hover {
 transform: scale(1.1); 
 
}
#home{
	margin: auto 300px;
	 list-style: none; 
	 font-family: 'Courier New', monospace;
	 font-weight: bold;
}
#home:hover{ 
	border-bottom: 3px solid red;
	color: yellow;
	cursor: pointer;	
}
#div3{
    display:flex;
	margin:30px auto;
	justify-content: space-between;
}
#prise{
	
}
a{
text-decoration: none;
color: white;
}
</style>
<body>

		<nav > 
	         <ul style="display: flex;">
	         <li><img alt="" src="img/liveevent.webp"> </li>
	        <li>
	        <div id="div1">
	        <form action="book" method="post">
    			<input type="search" name="liveevent" placeholder="Search Here">
    			<button name="SearchEvent">Search</button>
    			</form>
    			</div>
    			</li>
    			<li id="home"> <a href="Home.jsp" style="text-decoration: none; color: white"> Home </a></li>
	         </ul>	
		</nav>
	<div id="div1" >
             <%
             Booking bk=new Booking(session);
             ArrayList<LiveEvents>al=bk.liveevents(request.getParameter("searchevents"));
           for(LiveEvents li:al){ %>
           <a href="ClickEvent.jsp?id=<%=li.getId()%>">
           <div id="div2">
            	 <img alt="" src="<%= li.getImgurl() %>" id="img1">
            	 <h3 style="background-color:black; width:250px; border-radius: 10px; margin-left:80px;height:30px;text-align: center;"><%=li.getName() %></h3>
            	 <div id="div3">
            	 <p><%=li.getPlace() %></p>
            	 <p><%=li.getDate() %></p>
            	 <button>
            	 <p id="prise"><%=li.getPrise() %>&#8377;</p>
            	 </button>
            	 </div>
             </div>
             </a>
             <%}%>
              </div>
              
</body>
</html>
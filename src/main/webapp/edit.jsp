<%@page import="com.model.custmore"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Your Profile</title>
 <link rel="icon" type="image/webp"
        href="img/bitebuddy.png" style="border-radius:50%;">
<style>
body {
  background: linear-gradient(#d57630, #d57630);
}

#profile-container {
  display: flex;
  justify-content: space-between;
  width: 80%;
  margin: 50px auto;
  padding: 20px;
  background-color: white;
  box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
  border-radius: 10px;
}

#profile-options {
  width: 25%;
  padding-right: 20px;
}

#profile-options p {
  cursor: pointer;
  font-weight: bold;
  padding: 15px;
  background-color: #f0f0f0;
  margin-bottom: 10px;
  text-align: center;
  border-radius: 5px;
  transition: background-color 0.3s;
}

#profile-options p:hover {
  background-color: #ddd;
}

#profile-content {
  width: 70%;
  padding-left: 20px;
  border-left: 1px solid #ccc;
}

input {
  height: 30px;
  width: 50%;
  margin-bottom: 15px;
  border-radius: 5px;
  border: 1px solid #ccc;
  padding-left:30px;
  border: none;
  text-decoration: none;
}

label {
 padding-left:10px;
  font-weight: bold;
  display: block;
  margin-bottom: 5px;
}

button {
  height: 40px;
  width: 220px;
  border: none;
  background-color: purple;
  color: white;
  border-radius: 10px;
  cursor: pointer;
  margin-top: 20px;
  display:block;
  margin-left: 50px;
}

button:hover {
  background-color: black;
  transform: scale(1.10); 
  color: white;
}

#msg {
  color: green;
  text-align: center;
  margin-bottom: 20px;
}

@media (max-width: 768px) {
  #profile-container {
    flex-direction: column;
  }

  #profile-options, #profile-content {
    width: 100%;
  }

  #profile-content {
    border-left: none;
    margin-top: 20px;
  }
}
#profile_img{
 float: right;
 border-radius: 50%;
 height: 250px;
 width: 250px;
}
</style>
<script>
function showContent(option) {
  let contentDiv = document.getElementById('profile-content');
  
  switch(option) {
    case 'orders':
      contentDiv.innerHTML = "<h3>Your Orders</h3><p>Order details will be shown here.</p>";
      window.location.href="Myorders.jsp"
      break;
    case 'wishlist':
      contentDiv.innerHTML = "<h3>Your Wishlist</h3><p>Wishlist items will be displayed here.</p>";
      break;
    case 'coupons':
      contentDiv.innerHTML = "<h3>Your Coupons</h3><p>Available coupons will be shown here.</p>";
      break;
    case 'notifications':
      contentDiv.innerHTML = "<h3>Notifications</h3><p>All your notifications will be displayed here.</p>";
      break;
    case 'profile':
    default:
      contentDiv.innerHTML = `
      <center>  <h3>Edit Profile</h3></center> 
        <form action="book" method="post">
        <%if(session.getAttribute("id").equals("1")){%>
        <img id="profile_img" alt="" src="https://media.licdn.com/dms/image/D4D03AQGQ4uAtHtOrqA/profile-displayphoto-shrink_200_200/0/1719945932363?e=2147483647&v=beta&t=Ds6Oeulet9u57mP8_eQVjHEQSHitudIY3eJaz8O0Pak">
        <%} else{%>
        <img id="profile_img" alt="" src="https://img.freepik.com/premium-vector/namaste-greeting-background-design-template_649214-734.jpg">
        <%}%>
          <label>Name:</label>
          <input type="text" name="name" value="<%= session.getAttribute("name") %>">
          <label>Email:</label>
          <input type="text" name="email" value="<%= session.getAttribute("mail") %>">
          <label>Phone no:</label>
          <input type="number" name="phone" value="<%= session.getAttribute("phone") %>">
          <input type="hidden" name="id" value="<%= session.getAttribute("id") %>">
          <button type="submit" name="edit">Save Changes</button>
        </form>`;
      break;
  }
}
</script>
</head>
<body onload="showContent('profile')">

<%@ include file="heder.jsp" %>

<div id="profile-container">
  <!-- Profile Options -->
  <div id="profile-options">
    <p onclick="showContent('profile')">Profile</p>
    <p onclick="showContent('orders')">Orders</p>
    <p onclick="showContent('wishlist')">Wishlist</p>
    <p onclick="showContent('coupons')">Coupons</p>
    <p onclick="showContent('notifications')">Notifications</p>
  </div>


  <div id="profile-content">
  </div>
</div>

<%@ include file="footer.jsp" %>

</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Header</title>
    <link rel="stylesheet" href="style.css">
     <link rel="icon" type="image/webp"
        href="img/bitebuddy.png" style="border-radius:50%;">
</head>
<style>
 .profile-dropdown {
    position: absolute;
    top:70px; /* Adjust based on the triggering element */
    right: 20px; /* Adjust based on the triggering element */
    background-color: #f9f9f9;
    border: 1px solid #ccc;
    border-radius: 5px;
    padding: 10px;
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
    z-index: 1000;
    width: 150px; /* Adjust width as needed */
}

.profile-dropdown a {
    display: block;
    color: #333;
    text-decoration: none;
    padding: 8px 10px;
    border-radius: 3px;
    font-family: Arial, sans-serif;
    font-size: 14px;
}

.profile-dropdown a:hover {
    background-color: #007bff;
    color: #fff;
}


</style>
<body>
<nav class="navbar">
    <div class="logo">
        <img src="img/bitebuddy.png" alt="logo_img">
    </div>

    <ul class="nav-links">
        <li><a href="Home.jsp">Home</a></li>
        <%if(session.getAttribute("name") == null){ %>
        <li><a href="login.jsp">Login</a></li>
        <%}%>

        <li><a href="Signup.jsp" class="signup-btn">Sign Up</a></li>
        <li><a href="addcart.jsp"><i class="fa fa-shopping-cart"></i></a></li>
        <%if(session.getAttribute("name")!= null) {%>


 		<li>
    <% if (session.getAttribute("id") != null && session.getAttribute("id").equals("1")) { %>
        <a href="additm.jsp">Add Item</a>
    <% } %>
        </li>

        <li onmouseover="over()" style="color: white; cursor: pointer;">
        <% if (session.getAttribute("name") != null) { %>
          
              <i class="fa fa-user" style="scolor:white"></i>  <%= session.getAttribute("name") %>&#x25BC
                
            <form action="book" method="post">
                <input type="hidden" name="logout" value="yes" />
            </form>
        <% } }%>
        </li>
    </ul>
</nav>
<script type="text/javascript">

function over() {
    let existingDropdown = document.querySelector('.profile-dropdown');
    if (existingDropdown) {
        existingDropdown.remove();
    }
    let select = document.createElement('div');
    select.classList.add('profile-dropdown');
    document.body.appendChild(select);

   
    const options = [
    	 { text: "Profile", href: "edit.jsp" },
        { text: "About Us", href: "aboutus.jsp" },
        { text: "Logout", action: () => document.forms[0].submit() }, // Logic action for Logout
        { text: "My Orders", href: "Myorders.jsp" }
    ];

    options.forEach(option => {
        let link = document.createElement('a');
        link.textContent = option.text;

        if (option.href) {
            link.href = option.href;
        } else if (option.action) {
            link.href = "javascript:void(0)";
            link.addEventListener('click', option.action);
        }

        select.appendChild(link);
        let br = document.createElement('br');
        select.appendChild(br);
    });
}

document.querySelector('#profile-button').addEventListener('mouseover', over);


</script>
</body>
</html>

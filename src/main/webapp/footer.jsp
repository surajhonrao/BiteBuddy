<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="style.css">
 <link rel="icon" type="image/webp"
        href="img/bitebuddy.png" style="border-radius:50%;">
</head>
<style>
/* Basic footer styling */
footer {
    background-color: #2C3E50;
    color: white;
    padding: 30px;
    font-family: 'Arial', sans-serif;
    text-align: center;
}

/* Logo */
#img {
    height: 50px;
    width: auto;
    margin-bottom: 20px;
}

/* Social Links */
#ul {
    list-style-type: none;
    padding: 0;
    margin: 20px 0;
    display: flex;
    justify-content: center;
}

#ul li {
    margin: 0 10px;
}

#ul li a, #ul li i {
    font-size: 24px;
    color: white;
    transition: color 0.3s ease;
}

#ul li a:hover, #ul li i:hover {
    color: #3498DB;
}

/* Table Styling */
table {
    width: 100%;
    margin-top: 30px;
    text-align: left;
    border-collapse: collapse;
}

th, td {
    padding: 10px 15px;
    color: #FFFFFF;
}

th {
    text-transform: uppercase;
    font-weight: bold;
    font-size: 16px;
    color: #3498DB;
    border-bottom: 2px solid #3498DB;
}

td {
    font-size: 14px;
    border-bottom: 1px solid #7F8C8D;
}

table tr:hover td {
    background-color: #34495E;
    transition: background-color 0.2s;
}

/* Download Section Styling */
#download_section {
    display: inline-flex;
    justify-content: center;
    gap: 40px;
    margin-top: 20px;
	margin-left:800px;
}

#download, #downloa {
    display: flex;
    flex-direction: column;
    align-items: center;
    transition: transform 0.3s ease;
}

#download img, #downloa img {
    width: 50px; /* Adjusted icon size */
    height: auto;
    margin-bottom: 10px;
}

h5 {
    font-size: 16px;
    color: white;
    text-align: center;
    margin-top: 0;
}

/* Hover Effect */

#download:hover, #downloa:hover {
    transform: translateY(-10px); /* Lift effect on hover */
}

#download img:hover, #downloa img:hover {
    filter: brightness(1.2); /* Slight glow effect */
}

/* Special Effects */
#download img {
    border-radius: 50%; /* Make the icon round */
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
}

#downloa img {
    border-radius: 50%; /* Make the icon round */
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
}

/* Responsive Design */
@media (max-width: 768px) {
    #download_section {
        flex-direction: column;
        gap: 20px;
    }

    #download, #downloa {
        width: 100%;
    }
}



/* Footer Disclaimer Text */

#footer_text {
    margin-top: 20px;
    font-size: 12px;
    line-height: 1.6;
    color: #7F8C8D;
}

/* Add a bit of responsiveness */

@media (max-width: 768px) {
    table {
        font-size: 12px;
    }

    th, td {
        padding: 8px;
    }

    #download_section {
        flex-direction: column;
    }

    #download, #downloa {
        margin: 10px 0;
    }
}

</style>
<body>
<footer>
 <img  id="img" src="img/bitebuddy.png"
            alt=" BiteBuddy">

    <table>
        <tr>
            <th>About BiteBuddy</th>
            <th>Zomaverse</th>
            <th>For Restaurants</th>
            <th>Learn More</th>
        </tr>
        <tr>
            <td>Who We are</td>
            <td>Zomato</td>
            <td>Partner With Us</td>
            <td>Privacy</td>
        </tr>
        <tr>
            <td>Blog</td>
            <td>Blinkit</td>
            <td>Apps For You</td>
            <td>Security</td>
        </tr>
        <tr>
            <td>Work With Us</td>
            <td>Feeding India</td>
            <td></td>
            <td>Terms</td>
        </tr>
        <tr>
            <td>Investors Reletations</td>
            <td>Hyprepure</td>
            <td></td>
            <td>Sitemap</td>
            </tr>
            <tr>
            <td>Press Kit</td>
            <td>Zomaland</td>
                <td></td>
                <td></td>
        </tr>
        <tr>
            <td>Contact Us</td>
            <td>Wether Union</td>
        </tr>
    </table>
    <div>
            <ul id="ul">
                <li><a href="https://www.instagram.com/?hl=en" style="color: white;"><i class="fa fa-facebook" ></i></a></li>
                <li><i class="fa fa-instagram"></i></li>
                <li><i class="fa fa-twitter"></i></li>
                <li><i class="fa fa-linkedin-square"></i></li>
                <li><i class="fa fa-youtube-play"></i></li>
            </ul>
            <p> Follow On</p>
        </div>
    <div id="download_text" style="margin-left: 800px;">
        <p>Download On The..</p>
</div>
   <section id="download_section">
    <div id="download">
        <div id="gpay">
            <a href="#">
                <img src="https://img.icons8.com/?size=100&id=22988&format=png&color=000000" alt="Google Play">
            </a>
            <h5>Google Play</h5>
        </div>
    </div>
    <div id="downloa">
        <div id="apple">
            <a href="#">
                <img src="https://banner2.cleanpng.com/20180705/kyf/aax7un41y.webp" alt="App Store">
            </a>
            <h5>App Store</h5>
        </div>
    </div>
</section>

    <hr>
    <div id="footer_text">
    <p>By continuing past this page, you agree to our Terms of Service, Cookie Policy, Privacy Policy and Content Policies. All trademarks are properties of their respective owners. 2008-2024 © BiteBuddy™ Ltd. All rights reserved.</p>
</div>
</footer>
</body>
</html>
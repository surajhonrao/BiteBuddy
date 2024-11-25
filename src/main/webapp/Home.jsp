<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="BiteBuddy - Your favorite meals delivered fast and fresh.">
    <link rel="icon" type="image/webp"
        href="img/bitebuddy.png" style="border-radius:50%;">
        <link rel="icon" type="image/webp" href="" style="border-radius:50%;">
    <title>BiteBuddy</title>
    <link href='https://fonts.googleapis.com/css?family=Poppins' rel='stylesheet'>
    <link rel="stylesheet" href="style.css">
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBH1BWeviadbIQCjIhYcddR64wNeM6SHDw" async defer></script>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
  integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.rtl.min.css"
    integrity="sha384-dpuaG1suU0eT09tx5plTaGMLBsfDLzUCCUXOY2j/LSvXYuG6Bqs43ALlhIqAJVRb" crossorigin="anonymous">
 
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@1,300&display=swap" rel="stylesheet">
</head>
<style>
#search{
 width:40%;
 margin-left: 450px;
}
#animalname{
 	height:40px;
 	width:500px;
 	border-radius: 10px;
 	border: none;
}
#animalname::placeholder{
   padding-left: 30px;
   font-family: 'Courier New', monospace;
}
#search_icon{
	background-color: white;
	height:40px;
	margin-bottom: 20px;
	border-radius: 10px;
}
.fa-search{
	margin-left: 10px;
}
.chatbot-container {
      position: fixed;
      bottom: 0;
      right: 15px;
      max-width: 300px;
      z-index: 1000;
    }
   .chatbot-button {
    background-image: url("img/bitebuddy.png");
    background-position: center;
    background-size: cover;
    padding: 10px;
    border: none;
    border-radius:50%;
    width: 100px;
    height: 100px;
    cursor: pointer;
}
    .chatbot-window {
      display: none;
      background-color: white;
      border: 1px solid #ccc;
      border-radius: 10px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
      overflow: hidden;
    }
    .chatbot-header {
      background-color:#6C757D;
      color: white;
      padding: 10px;
      text-align: center;
      font-weight: bold;
    }
    .chatbot-messages {
      height: 200px;
      overflow-y: auto;
      padding: 10px;
    }
    .chatbot-input {
      display: flex;
      border-top: 2px dotted #e8a1a1;
    }
    .chatbot-input input {
      flex: 1;
      padding: 10px;
      border: none;
      font-weight: bo
    }
    .chatbot-input button {
      padding: 10px;
      background-color:white;
      color: rgb(14, 111, 175);
      font-weight: bold;
      border: none;
      cursor: pointer;
    }
    .chatbot-input button:hover{
      background-color:black;
      font-style: oblique;
    }
   #collection_list{
   display: flex;
   gap:10px;
   margin-bottom: 50px;
 
   }
 #collection_card{
 background-image:url("https://b.zmtcdn.com/data/collections/684397cd092de6a98862220e8cc40aca_1709810207.png");
    background-size: cover;
    background-repeat: no-repeat;
    background-position: center; 
    height: 350px;
    width: 300px;
    border-radius: 10px;
    margin: 20px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    display: flex;
    align-items: flex-end; 
    justify-content: center;
    color: white;
    text-align: center;
    font-size: 18px;
    padding: 20px;
 }
#collection_cards{
background-image:url("https://b.zmtcdn.com/data/pictures/7/19209267/0ebd174fdb30082b3e2a6e01afeac5cc.jpg");
    background-size: cover;
    background-repeat: no-repeat;
    background-position: center; 
    height: 350px;
    width: 300px;
    border-radius: 10px;
    margin: 20px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    display: flex;
    align-items: flex-end; 
    justify-content: center;
    color: white;
    text-align: center;
    font-size: 18px;
    padding: 20px;
} 
#collection_cardi{
background-image:url("https://assets.cntraveller.in/photos/63d8ec9e6b0232438760225f/master/w_1600%2Cc_limit/Daysie%25201.jpg");
    background-size: cover;
    background-repeat: no-repeat;
    background-position: center; 
    height: 350px;
    width: 300px;
    border-radius: 10px;
    margin: 20px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    display: flex;
    align-items: flex-end; 
    justify-content: center;
    color: white;
    text-align: center;
    font-size: 18px;
    padding: 20px;
}
#collection_cardii {
background-image:url("https://b.zmtcdn.com/data/pictures/6/20929876/995d4f6e850f1ffdfe2af4c21b5f2c5f_featured_v2.jpg");
    background-size: cover;
    background-repeat: no-repeat;
    background-position: center; 
    height: 350px;
    width: 300px;
    border-radius: 10px;
    margin: 20px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    display: flex;
    align-items: flex-end; 
    justify-content: center;
    color: white;
    text-align: center;
    font-size: 18px;
    padding: 20px;
}

#collection_card:hover, 
#collection_cards:hover, 
#collection_cardi:hover, 
#collection_cardii:hover {
    transform: scale(1.05); /* Scale up the div on hover for a smooth effect */
    transition: 0.3s ease-in-out;
}
a{
	text-decoration: none;
	color: black;
}
</style>
<body>
    <%@ include file="heder.jsp" %>

    <!-- Hero Section -->
    <section class="hero" id="home" target="_parent">
        <h1>BiteBuddy</h1>
        <p>Your favorite meals delivered fast and fresh</p>
        
        <div id="search">
            <form action="book" method="post">
            <div id="search_icon">
                <i class="fa fa-search" style="color: black;"></i>
                <input type="search" name="animalname" id="animalname" placeholder="Search for restaurant, cuisine or dish" value=""><br><br>
                </div>
                <button class="order-btn" name="search" style="margin-left: -100px; border-radius:5px;">Search Here</button>
            </form>
        </div>
    </section>

    <!-- Restaurants Section -->
  <form action="book" method="post">
    <section class="restaurants" id="restaurants">
        <h2>Explore Nearby Restaurants</h2>
       
        <div class="restaurant-list">
         <a href="orderonline.jsp">
            <div class="restaurant-card" onclick="submitCategoryForm('orderonline')">
                <img src="https://b.zmtcdn.com/webFrontend/e5b8785c257af2a7f354f1addaf37e4e1647364814.jpeg?output-format=webp&fit=around|402:360&crop=402:360;*,*"
                    alt="Tasty Bites restaurant">
                <h3>Order Online</h3>
                <p>Stay Home and Order to your doorstep</p>
            </a>
            <input type="hidden" value="1" name="id">
            <button name="clickfororder"></button>
            </div>
            
            <div class="restaurant-card" onclick="submitCategoryForm('events')">
            <a href="LiveEvents.jsp">
                <img src="https://cdn.prod.website-files.com/640f88394ca2650c7f6c0d7c/647e96507f317f025ab1d8d0_ConcertProduction.jpeg"
                    alt="Flavor Town restaurant">
                     </a>
                <h3>Live Events</h3>
                <p>Discover the best Events & concerts</p>
            </div>
           
             <div class="restaurant-card" onclick="submitCategoryForm('dining')">
             <a href="dining.jsp">
                <img src="https://b.zmtcdn.com/data/o2_assets/371de657644f1b5818fcb5d83387c8c91722851940.png?output-format=webp&fit=around|402:360&crop=402:360;*,*"
                    alt="Flavor Town restaurant">
                <h3>Dining</h3>
                <p>Discover the best Events & concerts</p>
                </a>
            </div>
            
        </div>
    </section>
</form>

 <div class="chatbot-container">
    <button class="chatbot-button" onclick="toggleChatbot()"></button>
    <div class="chatbot-window">
      <div class="chatbot-header"> 👨‍🍳 BiteBuddy 👨‍🍳  ‍</div>
      <div class="chatbot-messages" id="chatbot-messages"></div>
      <div class="chatbot-input">
        <input type="text" id="chatbot-input" placeholder="How Can I Help You 🍴...">
        <button onclick="sendMessage()"> <img alt="" src="https://as2.ftcdn.net/v2/jpg/03/67/01/87/1000_F_367018726_sb2yPBmtnV3Fp6moRsbhdXCrtVOSgQ1O.jpg" height="20px" width="20px"> </button>
      </div>
    </div>
  </div>
    <!-- Collections Section -->
    <section id="collection">
        <h2>Collections</h2>
        <p>
            Explore curated lists of top restaurants, cafes, pubs, and bars in Bengaluru, based on trends
            <a href="#" style="float: right; text-decoration: none; color: red;">
                All collections in Bengaluru
                <img src="https://cdn1.iconfinder.com/data/icons/maps-and-location-v2/64/arrow_right_go-64.png"
                    height="20px" width="20px" style="vertical-align: middle;">
            </a>
        </p>

       <div id="collection_list">
    <div id="collection_card">
        <h4>Top Trending Spots <br> 39 places</h4>
    </div>
    <div id="collection_cards">
        <h4>Best Rooftop Places <br> 51 places</h4>
    </div>
    <div id="collection_cardi">
        <img src="" alt="">
        <h4>Newly Opened Places <br> 30 places</h4>
    </div>
      <div id="collection_cardii">
        <img src="" alt="">
        <h4>Its Date  <br> 30 places</h4>
    </div>
</div>

        </div>
    </section>

   

    <!-- Footer -->
    <%@ include file="footer.jsp" %>

<script type="text/javascript">
let chatbotOpened = false;

document.addEventListener('DOMContentLoaded', function() {
  const elems = document.querySelectorAll('.sidenav');
  const instances = M.Sidenav.init(elems);
});

function toggleChatbot() {
  const chatbotWindow = document.querySelector('.chatbot-window');
  chatbotWindow.style.display = chatbotWindow.style.display === 'none' ? 'block' : 'none';

  if (!chatbotOpened) {
    addMessage('BiteBuddy 👨‍🍳: Welcome! How can I assist you today?', 'left');
    chatbotOpened = true;
    createButton('Order Online', 'orderOnline');
  }
}

function addMessage(message, align) {
  const messagesContainer = document.getElementById('chatbot-messages');
  const messageDiv = document.createElement('div');
  messageDiv.style.textAlign = align;
  messageDiv.textContent = message;
  messagesContainer.appendChild(messageDiv);
  messagesContainer.scrollTop = messagesContainer.scrollHeight; // Auto-scroll
}

/* function createButton(text, action) {
  const buttonContainer = document.getElementById('button-container');
  const button = document.createElement('button');
  button.className = 'button';
  button.textContent = text;
  button.onclick = function() {
    handleButtonAction(action);
  };
  buttonContainer.appendChild(button);
}
 */
function handleButtonAction(action) {
  switch (action) {
    case 'orderOnline':
      addMessage('BiteBuddy: Redirecting to the order page...', 'left');
      window.open('order.jsp', '_blank');
      break;
    // Add more actions as needed
    default:
      addMessage('BiteBuddy: Button action not recognized.', 'left');
  }
}

 function sendMessage() {
	  const input = document.getElementById('chatbot-input');
	  const message = input.value.trim();

	  if (message) {
	    addMessage(`You: ${message}`, 'right');

	    // Basic keyword recognition
	    let response = '';
	    const lowerMessage = message.toLowerCase();

	    if (lowerMessage.includes('login')) {
	      response = 'BiteBuddy: Opening Login page...';
	      window.open('login.jsp', '_parent');
	    } else if (lowerMessage.includes('register') || lowerMessage.includes('signup')) {
	      response = 'BiteBuddy: Opening Signup page...';
	      window.open('Signup.jsp', '_parent');
	    } else if (lowerMessage.includes('home') || lowerMessage.includes('main')) {
	      response = 'BiteBuddy: Opening Home page...';
	      window.open('Home.jsp', '_parent');
	    } else if (lowerMessage.includes('about')) {
	      response = 'BiteBuddy: Redirecting to the About Us page...';
	      window.open('aboutus.jsp', '_parent');
	    } else if (lowerMessage.includes('help')) {
	      response = 'BiteBuddy: How can I help you? You can type "login", "register", "order", or "home" to proceed.';
	    } else if (lowerMessage.includes('order')) {
	      response = 'BiteBuddy: Redirecting to the order page...';
	      window.open('Myorders.jsp', '_parent');
	    } else if (lowerMessage.includes('hello') || lowerMessage.includes('hii')) {
	      response = 'BiteBuddy: Hello 🙏🙏, Welcome to BiteBuddy 👨‍🍳...!';
	    } else {
	      response = 'BiteBuddy: I didn\'t quite understand that. Please try asking something else!';
	    }

	    addMessage(response, 'left');
	    input.value = '';
	  }
	}

 function submitCategoryForm(category) {
	    document.getElementById('category').value = category;
	    document.forms[0].submit(); // Submit the form
	  }
</script>
    <script src="app.js"></script>
</body>

</html>

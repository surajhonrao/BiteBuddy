//import java.io.IOException;
//
//import com.model.Booking;
//
//import jakarta.servlet.ServletException;
//import jakarta.servlet.http.HttpServlet;
//import jakarta.servlet.http.HttpServletRequest;
//import jakarta.servlet.http.HttpServletResponse;
//import jakarta.servlet.http.HttpSession;
//
//public class VerifyEmailServlet extends HttpServlet {
//
//	 protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
//		 
//	 HttpSession session =request.getSession();
//		Booking bk=new Booking(session);
//		String name = request.getParameter("name");
//		String email = request.getParameter("email");
//		session.setAttribute("registerEmail", email);
//		String passward=request.getParameter("pin");
//		String phone=request.getParameter("phone");
//	        
//	        
//	        if (email != null) {
//	            // Store the user data in the database after verification
//	            boolean isStored =bk. register(email); // Implement your DB logic here
//	            
//	            if (isStored) {
//	                // Display Thank You page
//	                response.setContentType("text/html");
//	                response.getWriter().write("<html><body><h1>Thank you, your email is verified!</h1></body></html>");
//	            } else {
//	                // Handle case where storing data fails
//	                response.getWriter().write("<html><body><h1>Verification failed. Please try again.</h1></body></html>");
//	            }
//	        } else {
//	            response.getWriter().write("<html><body><h1>Invalid email verification link.</h1></body></html>");
//	        }
//	 }
//}

package com.controler;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import com.model.Booking;
import com.model.fetch;
@WebServlet("/book")
public class Book extends HttpServlet{

	
	@Override 
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		HttpSession se=req.getSession();
		
		Booking bk=new Booking(se);
		//Register Department 
		if (req.getParameter("signup") != null) {

		String name = req.getParameter("name");
		String email = req.getParameter("email");
		se.setAttribute("registerEmail", email);
		String passward=req.getParameter("pin");
		String phone=req.getParameter("phone");
		String subject="Verify Your Email";
//		boolean cheak = bk.cheakemail(email, subject,
//			    "<html>"
//			    + "<body>"
//			    + "<p>Dear User,</p>"
//			    + "<p>Thank you for registering. Please verify your email by clicking the button below:</p>"
//			    + "<a href='http://localhost:8080/BiteBuddy/Signup.jsp/verify?email=" + email + "' "
//			    + "style='text-decoration:none; display:inline-block; background-color:#4CAF50; color:white; "
//			    + "padding:10px 20px; font-size:16px; border-radius:5px; text-align:center;'>"
//			    + "Click Here to Verify Your Mail"
//			    + "</a>"
//			    + "<p>Best regards,</p>"
//			    + "<p>Your Company Name</p>"
//			    + "</body>"
//			    + "</html>"
//			);
//		if (cheak) {
		String status=bk.register(name,email,passward,phone);
		if (status.equals("success")) {
			req.setAttribute("status","Register Successfull");
		}else {
			req.setAttribute("status","Register failed");
		}
		RequestDispatcher rd=req.getRequestDispatcher("login.jsp");
		rd.forward(req, resp);
		}
		//Login Department..
		
		else if (req.getParameter("login") != null) {
		    String phone =(String)se.getAttribute("Loginemail");
		    String pin1 = req.getParameter("pin1");
		    String pin2 = req.getParameter("pin2");
		    String pin3 = req.getParameter("pin3");
		    String pin4 = req.getParameter("pin4");
		    
		    String upin=pin1+pin2+pin3+pin4;
		    
		    String storedOtp = (String)se.getAttribute("otpGenerated");
  
		    if (upin.equals(storedOtp)) {
		        String status1 = bk.login(phone); 
		        if (status1.equals("success")) {
		            req.setAttribute("status", "Login Successfully");
		            RequestDispatcher rd = req.getRequestDispatcher("Home.jsp");
		            rd.forward(req, resp);
		        } else {
		            req.setAttribute("status", "Login Failed");
		            RequestDispatcher rd = req.getRequestDispatcher("login.jsp");
		            rd.forward(req, resp);
		        }
		    } else {
		        req.setAttribute("status", "Invalid OTP");
		        RequestDispatcher rd = req.getRequestDispatcher("login.jsp");
		        rd.forward(req, resp);
		    }
		}
   // Search Here
		else if (req.getParameter("search")!=null) {
			 resp.sendRedirect("dog2.jsp?animal="+req.getParameter("animalname"));
		}
		else if (req.getParameter("addcart") != null) {
		resp.sendRedirect("addcart.jsp?add="+req.getParameter("p_id"));
		}
		else if (req.getParameter("click") != null) {
			resp.sendRedirect("wishlist.jsp?list="+req.getParameter("id"));
		}
		//Logout Your Profile 
		else if (req.getParameter("logout") != null) {
		    se.invalidate();
		    RequestDispatcher rd = req.getRequestDispatcher("Home.jsp");
		    rd.forward(req, resp);
		}
		
		else if (req.getParameter("add") != null) {
			
			String cetogry=req.getParameter("category");
			String url=req.getParameter("url");
			String prise=req.getParameter("prise");
		    String name=req.getParameter("name");
			
			String staus=bk.additem(cetogry,url,prise,name);
			if (staus.equals("success")) {
				req.setAttribute("status", "Item Added successfully");
				RequestDispatcher rd=req.getRequestDispatcher("additm.jsp");
				rd.forward(req, resp);
			}else {
				req.setAttribute("status", "Item Added Failed");
				RequestDispatcher rd=req.getRequestDispatcher("additm.jsp");
				rd.forward(req, resp);
			}
		}
		
		
		else if (req.getParameter("edit") != null) {
		    String name = req.getParameter("name");
		    String mail = req.getParameter("email");
		    String phone = req.getParameter("phone");
		    String id = req.getParameter("id");

		    String status = bk.edit(id, name, mail, phone); 

		    if (status.equals("success")) {
		        req.setAttribute("status", "Profile updated successfully");
		        RequestDispatcher rd = req.getRequestDispatcher("edit.jsp");
			    rd.forward(req, resp);
		    } else {
		        req.setAttribute("status", "Profile update failed");
		        RequestDispatcher rd = req.getRequestDispatcher("edit.jsp");
			    rd.forward(req, resp);
		    }
		    
		}
		else if (req.getParameter("buynow") !=null) {
			resp.sendRedirect("buynow.jsp?bay="+ req.getParameter("p_id"));			
		}
		else if (req.getParameter("buy")!= null) {
			String prise=req.getParameter("prise");
			String name=req.getParameter("pname");
			String url=req.getParameter("purl");
			String id=req.getParameter("pid");
			System.out.println(id);
			String status=bk.buy(name,url,prise,id);
			if (status.equals("success")) {
				req.setAttribute("status","Order placed successfully");
				RequestDispatcher rd=req.getRequestDispatcher("Home.jsp");
				rd.forward(req, resp);
			}else {
				req.setAttribute("status","Order placed Failed");
				RequestDispatcher rd=req.getRequestDispatcher("buynow.jsp");
				rd.forward(req, resp);
			}
		}
		 
		//Generate The Otp 
		 if (req.getParameter("generate") != null) {
		        String email = req.getParameter("email");
		        String status1=bk.cheakemail(email);
			    
			    if (status1.equals("success")) {
		        String otp = bk.generateRandomPassword();
		        se.setAttribute("Loginemail", email);
		        String subject = " BiteBuddy Login Varifaction code OTP";
		        boolean status = bk.sendmail(email, subject, "Your Login One Time Password is :"+otp +"(Please Dont't Share With Anyone");

		        if (status) {
		            se.setAttribute("otpGenerated", otp);
		            se.setAttribute("status", "OTP sent to your Email,Cheak it once.");
		            req.getRequestDispatcher("login.jsp").forward(req, resp);
		            
		        } else {
		            se.setAttribute("status", "Failed to send OTP. Please try again.");
		            req.getRequestDispatcher("login.jsp").forward(req, resp);
			       
		        }
		        }else {
		        	req.setAttribute("status", "Emial Id Not Registerd");
		        	req.getRequestDispatcher("login.jsp").forward(req, resp);
			    }
	        }
	
		 else if (req.getParameter("click") != null) {
			    String category = req.getParameter("category");
			    ArrayList<fetch> imageList = bk.fetch(category);
			    
			    // Check if the list is not empty
			    if (!imageList.isEmpty()) {
			        req.setAttribute("imageUrls", imageList); // Set image list as attribute
			        req.getRequestDispatcher("orderonline.jsp").forward(req, resp);
			    } else {
			        req.setAttribute("status", "No images found for this category."); // Set an error message
			        req.getRequestDispatcher("Home.jsp").forward(req, resp);
			    }
			}

		   else if (req.getParameter("clickfororder")!=null) {
			resp.sendRedirect("orddronline.jsp?click="+req.getParameter("id"));
		}
//		 else if (req.getParameter("Dining") != null) {
//			 resp.sendRedirect("dining.jsp?="+req.getParameter("Diningid"));
//		}
		 else if (req.getParameter("serchcity") !=null) {
			resp.sendRedirect("dining.jsp?cheak="+req.getParameter("city"));
		}
		 else if (req.getParameter("category") !=null) {
			resp.sendRedirect("resturent.jsp");
		}
		 else if(req.getParameter("SearchEvent") != null) {
			 resp.sendRedirect("LiveEvents.jsp?searchevents="+req.getParameter("liveevent"));
		 }
		 
		}
   }
	


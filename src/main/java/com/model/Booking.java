package com.model;

import java.sql.Connection;


import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.PseudoColumnUsage;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

//import javax.mail.Authenticator;
//import javax.mail.Message;
//import javax.mail.MessagingException;
//import javax.mail.Session;
//import javax.mail.Transport;
//import javax.mail.internet.InternetAddress;
//import javax.mail.internet.MimeMessage;

import org.passay.CharacterRule;
import org.passay.EnglishCharacterData;
import org.passay.PasswordGenerator;

import com.mysql.cj.x.protobuf.MysqlxCrud.Order;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.http.HttpSession;
import jakarta.mail.Authenticator;
import jakarta.mail.Message;
import jakarta.mail.MessagingException;
import jakarta.mail.PasswordAuthentication;
import jakarta.mail.Session;
import jakarta.mail.Transport;
import jakarta.mail.internet.InternetAddress;
import jakarta.mail.internet.MimeMessage;
import jakarta.servlet.http.HttpSession;

public class Booking {
	 private Connection con;
	    private HttpSession session;

	    public Booking(HttpSession session) {
	        try {
	            Class.forName("com.mysql.cj.jdbc.Driver");
	            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bank", "root", "Suraj@123");
	            this.session = session;
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	    }
	    
	    public String register(String name, String email, String pin ,String phone) {
	    	String status="";
	    	 String query = "INSERT INTO users (srno, name, email, pin ,phone) VALUES (0, ?, ?, ?,?)";
             try (PreparedStatement ps = con.prepareStatement(query)) {
                 ps.setString(1,name);
                 ps.setString(2, email);
                 ps.setString(3, pin);
                 ps.setString(4, phone);
                 int rowsAffected = ps.executeUpdate();
                 status = (rowsAffected > 0) ? "success" : "fail";

     } catch (Exception e) {
         e.printStackTrace();
    
     }
             return status;
}
	    
	    public String login(String email) {
	    	String status1="fail";
	    	String q="select * from users where email =?";
	    	try {
				PreparedStatement ps=con.prepareStatement(q);
				ps.setString(1,email);
				
				ResultSet rs=ps.executeQuery();
				if(rs.next()) {
				session.setAttribute("id", rs.getString("srno"));
				session.setAttribute("name", rs.getString("name"));
				session.setAttribute("mail", rs.getString("email"));
				session.setAttribute("phone", rs.getString("phone"));
				status1="success";
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
	    	return status1;
	    }
	    
	    public String cheakemail(String email) {
	    	String status1="fail";
	    	int count=0;
	    	String q="select count(*) from users where email=?";
	    	try {
				PreparedStatement ps=con.prepareStatement(q);
				ps.setString(1, email);
				ResultSet rs=ps.executeQuery();
				while (rs.next()) {
					 count=rs.getInt(1);
				}
				
				if (count>0) {
					status1="success";
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
	    	return status1;
	    	
	    }
	    
	    
	   public  ArrayList<dproduct>productinfo(String animal){
	    	
	    	ArrayList<dproduct> al=new ArrayList<dproduct>();
	    	try {
	    		
	    	Statement st=con.createStatement();
	    	String q="select * from product where category='"+animal +"';";
	    	ResultSet rs=st.executeQuery(q);
	    	while(rs.next()) {
	    		dproduct d=new dproduct();
	    		d.setP_id(rs.getString(1));
	    		d.setP_category(rs.getString(2));
	    		d.setP_url(rs.getString(3));
	    		d.setP_prise(rs.getString(4));
	    		d.setName(rs.getString(5));
	    		al.add(d);
	    	}
	    	
	    	} catch (SQLException e) {
				e.printStackTrace();
			}
	    	return al;
	    }
	    
	   public ArrayList<addtocart> addtocart(String id){
		   ArrayList<addtocart> al = new ArrayList<addtocart>();
		   String status = "fail";
		   
		   // First, select the product details based on the product ID
		   String selectQuery = "SELECT category, p_url, p_prise FROM product WHERE p_id = ?"; 
		   
		   
		   String insertQuery = "INSERT INTO cart (p_category, p_url, p_prise) VALUES (?, ?, ?)";

		   try {
		       PreparedStatement psSelect = con.prepareStatement(selectQuery);
		       psSelect.setString(1, id);  // Set the product ID in the query
		       ResultSet rs = psSelect.executeQuery();
		       
		       while (rs.next()) {
		           addtocart ad = new addtocart();
		           
		           // Get product details
		           String p_category = rs.getString(1);
		           String p_url = rs.getString(2);
		           String p_prise = rs.getString(3);
		           
		           // Set product details in the object
		           ad.setP_category(p_category);
		           ad.setP_url(p_url);
		           ad.setP_prise(p_prise);
		           al.add(ad);
		           
		           // Insert product details into the cart
		           PreparedStatement psInsert = con.prepareStatement(insertQuery);
		           psInsert.setString(1, p_category);
		           psInsert.setString(2, p_url);
		           psInsert.setString(3, p_prise);
		           psInsert.executeUpdate();  // Execute the insert query
		           
		           status = "success";
		       }

		   } catch (SQLException e) {
		       e.printStackTrace();
		   }

		   return al;
		}

	    
	    public String additem(String p_category, String p_url, String p_prise ,String name) {
	    	String status="fail";
	    String query="insert into product(category,p_url,p_prise,p_name)values(?,?,?,?)";
	    try {
			PreparedStatement st=con.prepareStatement(query);
			st.setString(1,p_category );
			st.setString(2, p_url);
			st.setString(3, p_prise);
			st.setString(4, name);
			int rowaff=st.executeUpdate();
			if (rowaff>0) {
				status= "success";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	    	return status;
	    }
	    public String edit(String id, String name, String mail, String phone) {
	        String status = "fail";
	        String query = "UPDATE users SET name=?, email=?, phone=? WHERE srno=?"; 

	        try {
	            PreparedStatement ps = con.prepareStatement(query);
	            ps.setString(1, name);
	            ps.setString(2, mail);
	            ps.setString(3, phone);
	            ps.setString(4, id);

	        int row=ps.executeUpdate();
	        if (row>0) {
				session.setAttribute("id", id);
				session.setAttribute("name", name);
				session.setAttribute("mail", mail);
				session.setAttribute("phone", phone);
				
				status="success";
				}
	        } catch (Exception e) {
	            e.printStackTrace();
	        }

	        return status;
	    }
	    
	    
	    public ArrayList<dproduct> wishlist(String list) {
	        ArrayList<dproduct> al = new ArrayList<>();
	        String query = "SELECT * FROM product WHERE srno = ?";

	        try (PreparedStatement ps = con.prepareStatement(query)) {
	            ps.setString(1, list);  

	            try (ResultSet rs = ps.executeQuery()) {
	                while (rs.next()) {
	                    dproduct d = new dproduct();
	                    d.setP_id(rs.getString("p_id"));        // Use column names for better readability
	                    d.setP_category(rs.getString("category")); 
	                    d.setP_url(rs.getString("p_url"));  // Assuming these are the correct column names
	                    d.setP_prise(rs.getString("p_price"));
	                    d.setName(rs.getString("p_name"));
	                    al.add(d);
	                }
	            }

	        } catch (SQLException e) {
	            e.printStackTrace();  // Consider logging this to a file for production environments
	        }

	        return al;
	    }

	    public ArrayList<buynow> buynow(String id) {
	        ArrayList<buynow> al = new ArrayList<buynow>();
	        String q = "select * from product where p_id = ?";

	        try {
	            // Prepare the first query to get product details
	            PreparedStatement ps = con.prepareStatement(q);
	            ps.setString(1, id);
	            ResultSet rs = ps.executeQuery();

	            // Loop through the result set and add to buynow list
	            while (rs.next()) {
	                buynow b = new buynow();
	                String c = rs.getString("category");
	                String n = rs.getString("p_name");
	                String p = rs.getString("p_prise");
	                String u = rs.getString("p_url");

	                b.setP_category(c);
	                b.setP_name(n);
	                b.setP_prise(p);
	                b.setP_url(u);
	                al.add(b);
	            }

	        } catch (Exception e) {
	            e.printStackTrace();
	        }

	        return al;
	    }

       public String buy(String name,String url,String prise,String id){
    	   String status="fail";
    	   String q1 = "insert into Buynow(srno, c_id, p_name, p_url, p_prise, p_id, date) values(0,?, ?, ?, ?, ?, now())";
    	   try {
    		   String cid=(String)session.getAttribute("id");
			PreparedStatement ps=con.prepareStatement(q1);
			ps.setString(1, cid);
			ps.setString(2, name);
			ps.setString(3, url);
			ps.setString(4,prise);
			ps.setString(5,id);
			int row=ps.executeUpdate();
			if (row>0) {
				status="success";	
			}else {
				status="fail";
			}
		} catch (Exception e) {
			e.printStackTrace();		}
    	   
	return status;
       }

       public boolean   cheakemail(String mail, String subject, String body) {
    	   String portNumber = "587";
      		String hostName = "smtp.gmail.com";
      		String fromEmail = "bitebuddyy@gmail.com";
      		String password = "obua vgig wfkb bvas";
      		String to = mail;

      		Properties prop = new Properties();

      		prop.put("mail.smtp.host", hostName);
      		prop.put("mail.smtp.port", portNumber);
      		prop.put("mail.smtp.starttls.enable", true);
      		prop.put("mail.debug", true);
      		prop.put("mail.smtp.auth", true);
      		prop.put("mail.transport.protocol", "smtp");
      		prop.put("mail.smtp.connectiontimeout", "10000"); // 10 seconds
      		prop.put("mail.smtp.timeout", "10000"); // 10 seconds
      		Session session = Session.getInstance(prop, new Authenticator() {
      			@Override 
      			protected PasswordAuthentication getPasswordAuthentication() {
      				return new PasswordAuthentication(fromEmail, password);
      			}
      		});



      		MimeMessage message = new MimeMessage(session);
      		try {
      			message.setFrom(new InternetAddress(fromEmail));
      			message.setSubject(subject);
      			message.setText(body);

      			message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
      			Transport.send(message);
      			System.out.println("email sent successfully..");
      			return true;

      		}

      		catch (MessagingException e) {

      			e.printStackTrace();
      		}

      		return false;
       }
	    
//     @Async
//   	@Override
       public boolean sendmail(String mail, String subject, String body) {

   		String portNumber = "587";
   		String hostName = "smtp.gmail.com";
   		String fromEmail = "bitebuddyy@gmail.com";
   		String password = "obua vgig wfkb bvas";
   		String to = mail;

   		Properties prop = new Properties();

   		prop.put("mail.smtp.host", hostName);
   		prop.put("mail.smtp.port", portNumber);
   		prop.put("mail.smtp.starttls.enable", true);
   		prop.put("mail.debug", true);
   		prop.put("mail.smtp.auth", true);
   		prop.put("mail.transport.protocol", "smtp");
   		prop.put("mail.smtp.connectiontimeout", "10000"); // 10 seconds
   		prop.put("mail.smtp.timeout", "10000"); // 10 seconds
   		Session session = Session.getInstance(prop, new Authenticator() {
   			@Override 
   			protected PasswordAuthentication getPasswordAuthentication() {
   				return new PasswordAuthentication(fromEmail, password);
   			}
   		});



   		MimeMessage message = new MimeMessage(session);
   		try {
   			message.setFrom(new InternetAddress(fromEmail));
   			message.setSubject(subject);
   			message.setText(body);

   			message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
   			Transport.send(message);
   			System.out.println("email sent successfully..");
   			return true;

   		}

   		catch (MessagingException e) {

   			e.printStackTrace();
   		}

   		return false;
   	}

   	
   	public String generateRandomPassword() {

		PasswordGenerator passGen = new PasswordGenerator();

//		CharacterRule lcr = new CharacterRule(EnglishCharacterData.LowerCase);
//		lcr.setNumberOfCharacters(2);

		CharacterRule dr = new CharacterRule(EnglishCharacterData.Digit);
		dr.setNumberOfCharacters(2);

		String randomPassword = passGen.generatePassword(4,dr);
		return randomPassword;

	}


	    public ArrayList<myorder> myorder(){
	    	ArrayList<myorder> al=new ArrayList<myorder>();
	    	String q="select * from buynow where c_id=?";
	    	
	    	String id=(String)session.getAttribute("id");
	    	try {
				PreparedStatement ps=con.prepareStatement(q);
				ps.setString(1, id);
				ResultSet rs=ps.executeQuery();
			  while (rs.next()) {
				  myorder m=new myorder();
				m.setP_name(rs.getString("p_name"));
				m.setP_url(rs.getString("p_url"));
				m.setP_prise(rs.getString("p_prise"));
				al.add(m);
			}
				
			} catch (Exception e) {
				// TODO: handle exception
			}
	    	return al;
	    }
	    
	    public ArrayList<fetch> fetch(String category) {
	        ArrayList<fetch> al = new ArrayList<>();
	        String q = "SELECT * FROM images WHERE category=?";
	        
	        try (PreparedStatement ps = con.prepareStatement(q)) {
	            ps.setString(1, category);
	            ResultSet rs = ps.executeQuery();
	            
	            while (rs.next()) {
	                fetch f = new fetch();
	                f.setE_url(rs.getString("image_url"));
	                f.setCategory(rs.getString("category"));
	                al.add(f);
	            }
	        } catch (Exception e) {
	            e.printStackTrace(); // Log the exception for debugging
	        }
	        return al; // Return the list of fetched images
	    }

	   public ArrayList<dproduct> retrive(String id){
		   ArrayList<dproduct> al=new ArrayList<dproduct>();
		   String q="select * from product";
		 try {
			PreparedStatement ps=con.prepareStatement(q);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				dproduct d=new dproduct();
				d.setName(rs.getString(5));
				d.setP_category(rs.getString(2));
				d.setP_prise(rs.getString(4));
				d.setP_url(rs.getString(3));
				d.setP_id(rs.getString(1));
				al.add(d);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		   return al;
		   
	   }
	 public  ArrayList<Dining> fetchdining(String city){
		   ArrayList<Dining> al=new ArrayList<Dining>();
		   String q="select * from dining where City=?";
		   try {
			   PreparedStatement ps=con.prepareStatement(q);
			   ps.setString(1, city);
			   ResultSet rs=ps.executeQuery();
			   while (rs.next()) {
				Dining d=new Dining();
				d.setD_url(rs.getString(2));
				d.setName(rs.getString(3));
				d.setCity(rs.getString(4));
				d.setRent(rs.getString(5));
				d.setId(rs.getString(1));
				al.add(d);
			}
		} catch (Exception e) {
		 e.printStackTrace();
		}
		   
		   
		   return al;
		   
	   }
	 public ArrayList<Dining> fetchresturent(String id){
		 ArrayList<Dining> al=new ArrayList<Dining>();
		 String q="select * from dining where srno=?";
		 try {
			PreparedStatement ps=con.prepareStatement(q);
			ps.setString(1, id);
		ResultSet rs=ps.executeQuery();
		while (rs.next()) {
			Dining d=new Dining();
			d.setName(rs.getString(3));
			d.setCity(rs.getString(4));
			d.setD_url(rs.getString(2));
			d.setRent(rs.getString(5));
			al.add(d);
			
		}
		} catch (Exception e) {
			e.printStackTrace();
		}
	return al;
	 }
	    
	 public ArrayList<Photes> select(){
		 ArrayList<Photes> al=new ArrayList<Photes>();
		 String q="select * from photes";
		 try {
			PreparedStatement ps=con.prepareStatement(q);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				Photes p=new Photes();
				p.setImg_url(rs.getString(2));
				al.add(p);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		 return al;
	 }
	 
	public ArrayList<LiveEvents> liveevents(String city){
		ArrayList<LiveEvents> al=new ArrayList<LiveEvents>();
		
		String q="Select * from liveevent where place=?";
		try {
			PreparedStatement ps=con.prepareStatement(q);
			ps.setString(1, city);
			ResultSet rs=ps.executeQuery();
			while (rs.next()) {
		    LiveEvents li=new LiveEvents();
		    li.setId(rs.getString(1));
		    li.setImgurl(rs.getString(5));
		    li.setName(rs.getString(2));
		    li.setPlace(rs.getString(4));
		    li.setPrise(rs.getString(3));
		    li.setDate(rs.getString(6));
		    al.add(li);
				
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return al;
		
	}
	
	public ArrayList<LiveEvents>selectEvent(String id){
		ArrayList< LiveEvents> al=new ArrayList<LiveEvents>();
		String q="select * from liveevent where e_id=?";
		
		try {
			PreparedStatement ps=con.prepareStatement(q);
			ps.setString(1, id);
			ResultSet rs=ps.executeQuery();
			while (rs.next()) {
				LiveEvents li=new LiveEvents();
			    li.setId(rs.getString(1));
			    li.setImgurl(rs.getString(5));
			    li.setName(rs.getString(2));
			    li.setPlace(rs.getString(4));
			    li.setPrise(rs.getString(3));
			    li.setDate(rs.getString(6));
			    al.add(li);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return al;
	}
}
package com.model;

public class custmore {
  
	private String name;
	private String email;
	private String pin;
	private String phone;
	private String Id;
    public custmore() {
    	
    }
    
	
    public custmore(String name, String email, String pin, String phone) {
		super();
		this.name = name;
		this.email = email;
		this.pin = pin;
		this.phone = phone;
		this.Id=Id;
	}


	public String getId() {
		return Id;
	}


	public void setId(String id) {
		Id = id;
	}


	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}


	public void setPhone(String phone) {
		this.phone = phone;
	}


	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPin() {
		return pin;
	}
	public void setPin(String pin) {
		this.pin = pin;
	}
}

package com.model;

public class Dining {
 
	private String d_url;
	private String Name;
	private String City;
	private String rent;
	private String id;
	public Dining(String d_url, String name, String city, String rent,String id) {
		
		this.d_url = d_url;
		Name = name;
		City = city;
		this.rent = rent;
		this.id=id;
	}
	
	public Dining() {
	}

	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getD_url() {
		return d_url;
	}
	public void setD_url(String d_url) {
		this.d_url = d_url;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getCity() {
		return City;
	}
	public void setCity(String city) {
		City = city;
	}
	public String getRent() {
		return rent;
	}
	public void setRent(String rent) {
		this.rent = rent;
	}
	
}

package com.model;

public class dproduct {

 private String p_id;
 private String p_category;
 private String p_url;
 private String p_prise;
 private String name;
 
 
 
public dproduct(String p_id, String p_category, String p_url, String p_prise, String name) {

	this.p_id = p_id;
	this.p_category = p_category;
	this.p_url = p_url;
	this.p_prise = p_prise;
	this.name=name;
}

public dproduct() {
	
}


public String getName() {
	return name;
}

public void setName(String name) {
	this.name = name;
}
public String getP_id() {
	return p_id;
}
public void setP_id(String p_id) {
	this.p_id = p_id;
}
public String getP_category() {
	return p_category;
}
public void setP_category(String p_category) {
	this.p_category = p_category;
}
public String getP_url() {
	return p_url;
}
public void setP_url(String p_url) {
	this.p_url = p_url;
}
public String getP_prise() {
	return p_prise;
}
public void setP_prise(String p_prise) {
	this.p_prise = p_prise;
}
 
 
	
	
}

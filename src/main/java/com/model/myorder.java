package com.model;

public class myorder {
 private String p_url;
 private String p_name;
 private String p_prise;
 private String p_cetogry;
public myorder(String p_url, String p_name, String p_prise, String p_cetogry) {
	super();
	this.p_url = p_url;
	this.p_name = p_name;
	this.p_prise = p_prise;
	this.p_cetogry = p_cetogry;
}

public myorder() {
}

public String getP_url() {
	return p_url;
}
public void setP_url(String p_url) {
	this.p_url = p_url;
}
public String getP_name() {
	return p_name;
}
public void setP_name(String p_name) {
	this.p_name = p_name;
}
public String getP_prise() {
	return p_prise;
}
public void setP_prise(String p_prise) {
	this.p_prise = p_prise;
}
public String getP_cetogry() {
	return p_cetogry;
}
public void setP_cetogry(String p_cetogry) {
	this.p_cetogry = p_cetogry;
}
 
 
}

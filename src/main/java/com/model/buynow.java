package com.model;

public class buynow {

private	String p_url;
private String p_category;
private String p_name;
private String p_prise;
private String p_id;

public buynow() {
	super();
}

public buynow(String p_url, String p_category, String p_name, String p_prise ,String p_id) {
	super();
	this.p_url = p_url;
	this.p_category = p_category;
	this.p_name = p_name;
	this.p_prise = p_prise;
	this.p_id=p_id;
}


public String getP_id() {
	return p_id;
}

public void setP_id(String p_id) {
	this.p_id = p_id;
}

public String getP_url() {
	return p_url;
}
public void setP_url(String p_url) {
	this.p_url = p_url;
}
public String getP_category() {
	return p_category;
}
public void setP_category(String p_category) {
	this.p_category = p_category;
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


}

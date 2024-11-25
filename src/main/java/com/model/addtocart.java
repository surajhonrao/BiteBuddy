package com.model;

public class addtocart {
	private String c_id;
	 private String p_category;
	 private String p_url;
	 private String p_prise;
	public addtocart(String c_id, String p_category, String p_url, String p_prise) {
		super();
		this.c_id = c_id;
		this.p_category = p_category;
		this.p_url = p_url;
		this.p_prise = p_prise;
	}
	
	public addtocart() {
		
	}

	public String getC_id() {
		return c_id;
	}
	public void setC_id(String c_id) {
		this.c_id = c_id;
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

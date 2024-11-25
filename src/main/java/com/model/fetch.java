package com.model;

public class fetch {

	
	private String e_url;
	private String category;
	
	
	public fetch() {
		super();
	}
	public fetch(String e_url, String category) {
		super();
		this.e_url = e_url;
		this.category = category;
	}
	public String getE_url() {
		return e_url;
	}
	public void setE_url(String e_url) {
		this.e_url = e_url;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	
}

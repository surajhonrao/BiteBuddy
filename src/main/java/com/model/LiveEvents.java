package com.model;

public class LiveEvents {

	private String Id;
	private String imgurl;
	private String name;
	private String place;
	private String prise;
	private String Date;
	
	public LiveEvents() {
		super();
	}
	
	public LiveEvents(String imgurl, String name, String place, String prise,String Date,String Id) {
		super();
		this.imgurl = imgurl;
		this.name = name;
		this.place = place;
		this.prise = prise;
		this.Date=Date;
		this.Id=Id;
	}
	
	
	
	public String getId() {
		return Id;
	}

	public void setId(String id) {
		Id = id;
	}

	public String getDate() {
		return Date;
	}

	public void setDate(String date) {
		Date = date;
	}

	public String getImgurl() {
		return imgurl;
	}
	public void setImgurl(String imgurl) {
		this.imgurl = imgurl;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPlace() {
		return place;
	}
	public void setPlace(String place) {
		this.place = place;
	}
	public String getPrise() {
		return prise;
	}
	public void setPrise(String prise) {
		this.prise = prise;
	}
	
	
}

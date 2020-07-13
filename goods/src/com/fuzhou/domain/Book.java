package com.fuzhou.domain;

public class Book {
	private String bid;//涓婚敭
	private String bname;//鍥惧悕
	private String monthlySales;
	private double price;//瀹氫环
	private double currPrice;//褰撳墠浠�
	private double discount;//鎶樻墸
	private Category category;//鎵�灞炲垎绫�
	private String image_w;//澶у浘璺緞
	private String image_b;//灏忓浘璺緞
	
	public String getBid() {
		return bid;
	}
	public void setBid(String bid) {
		this.bid = bid;
	}
	public String getBname() {
		return bname;
	}
	public void setBname(String bname) {
		this.bname = bname;
	}
	public String getMonthlySales() {
		return monthlySales;
	}
	public void setMonthlySales(String monthlySales) {
		this.monthlySales = monthlySales;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public double getCurrPrice() {
		return currPrice;
	}
	public void setCurrPrice(double currPrice) {
		this.currPrice = currPrice;
	}
	public double getDiscount() {
		return discount;
	}
	public void setDiscount(double discount) {
		this.discount = discount;
	}
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	public String getImage_w() {
		return image_w;
	}
	public void setImage_w(String image_w) {
		this.image_w = image_w;
	}
	public String getImage_b() {
		return image_b;
	}
	public void setImage_b(String image_b) {
		this.image_b = image_b;
	}
	
	
}

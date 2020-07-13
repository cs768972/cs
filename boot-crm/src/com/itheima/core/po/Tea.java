package com.itheima.core.po;
/**
 * 客户持久化类
 */
public class Tea {
	private Integer id;       // 主键id
	private String tea_type;
	private String tea_name;
	private String tea_price;
	private String Monthly_sales;
	private String tea_place;
	//private Integer currentmileage;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getTea_type() {
		return tea_type;
	}
	public void setTea_type(String tea_type) {
		this.tea_type = tea_type;
	}
	public String getTea_name() {
		return tea_name;
	}
	public void setTea_name(String tea_name) {
		this.tea_name = tea_name;
	}
	public String getTea_price() {
		return tea_price;
	}
	public void setTea_price(String tea_price) {
		this.tea_price = tea_price;
	}
	public String getMonthly_sales() {
		return Monthly_sales;
	}
	public void setMonthly_sales(String monthly_sales) {
		Monthly_sales = monthly_sales;
	}
	public String getTea_place() {
		return tea_place;
	}
	public void setTea_place(String tea_place) {
		this.tea_place = tea_place;
	}
	@Override
	public String toString() {
		return "Tea [id=" + id + ", tea_type=" + tea_type + ", tea_name=" + tea_name + ", tea_price=" + tea_price
				+ ", Monthly_sales=" + Monthly_sales + ", tea_place=" + tea_place + ", getId()=" + getId()
				+ ", getTea_type()=" + getTea_type() + ", getTea_name()=" + getTea_name() + ", getTea_price()="
				+ getTea_price() + ", getMonthly_sales()=" + getMonthly_sales() + ", getTea_place()=" + getTea_place()
				+ ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString()
				+ "]";
	}

	
}
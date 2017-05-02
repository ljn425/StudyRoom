package com.monorella.srf.branch.dto;

public class Payment {
	private String pay_cd;
	private String branch_owner_cd;
	private String room_cd;
	private String seat_cd;
	private int pay_amount;
	private int discount_amount;
	private int total_amount;
	private String pay_date;
	private String pay_option;
	
	public String getPay_cd() {
		return pay_cd;
	}
	public void setPay_cd(String pay_cd) {
		this.pay_cd = pay_cd;
	}
	public String getBranch_owner_cd() {
		return branch_owner_cd;
	}
	public void setBranch_owner_cd(String branch_owner_cd) {
		this.branch_owner_cd = branch_owner_cd;
	}
	public String getRoom_cd() {
		return room_cd;
	}
	public void setRoom_cd(String room_cd) {
		this.room_cd = room_cd;
	}
	public String getSeat_cd() {
		return seat_cd;
	}
	public void setSeat_cd(String seat_cd) {
		this.seat_cd = seat_cd;
	}
	public int getPay_amount() {
		return pay_amount;
	}
	public void setPay_amount(int pay_amount) {
		this.pay_amount = pay_amount;
	}
	public int getDiscount_amount() {
		return discount_amount;
	}
	public void setDiscount_amount(int discount_amount) {
		this.discount_amount = discount_amount;
	}
	public int getTotal_amount() {
		return total_amount;
	}
	public void setTotal_amount(int total_amount) {
		this.total_amount = total_amount;
	}
	public String getPay_date() {
		return pay_date;
	}
	public void setPay_date(String pay_date) {
		this.pay_date = pay_date;
	}
	public String getPay_option() {
		return pay_option;
	}
	public void setPay_option(String pay_option) {
		this.pay_option = pay_option;
	}
	
	@Override
	public String toString() {
		return "Payment [pay_cd=" + pay_cd + ", branch_owner_cd=" + branch_owner_cd + ", room_cd=" + room_cd
				+ ", seat_cd=" + seat_cd + ", pay_amount=" + pay_amount + ", discount_amount=" + discount_amount
				+ ", total_amount=" + total_amount + ", pay_date=" + pay_date + ", pay_option=" + pay_option + "]";
	}
	
	
}

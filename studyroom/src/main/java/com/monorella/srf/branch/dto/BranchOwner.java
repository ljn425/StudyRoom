package com.monorella.srf.branch.dto;

public class BranchOwner {

	private String branch_owner_cd; //지점대표코드
	private String owner_num;       //사업자번호
	private String branch_owner_nm; //지점명
	private String branch_owner_id; //아이디
	private String branch_owner_pw; //비밀번호
	private String branch_owner_addr; // 주소
	private String owner_nm; //이름
	private String branch_owner_tel; //연락처
	private String branch_owner_in_date; // 가입일
	
	public String getBranch_owner_cd() {
		return branch_owner_cd;
	}
	public void setBranch_owner_cd(String branch_owner_cd) {
		this.branch_owner_cd = branch_owner_cd;
	}
	public String getOwner_num() {
		return owner_num;
	}
	public void setOwner_num(String owner_num) {
		this.owner_num = owner_num;
	}
	public String getBranch_owner_nm() {
		return branch_owner_nm;
	}
	public void setBranch_owner_nm(String branch_owner_nm) {
		this.branch_owner_nm = branch_owner_nm;
	}
	public String getBranch_owner_id() {
		return branch_owner_id;
	}
	public void setBranch_owner_id(String branch_owner_id) {
		this.branch_owner_id = branch_owner_id;
	}
	public String getBranch_owner_pw() {
		return branch_owner_pw;
	}
	public void setBranch_owner_pw(String branch_owner_pw) {
		this.branch_owner_pw = branch_owner_pw;
	}
	public String getBranch_owner_addr() {
		return branch_owner_addr;
	}
	public void setBranch_owner_addr(String branch_owner_addr) {
		this.branch_owner_addr = branch_owner_addr;
	}
	public String getOwner_nm() {
		return owner_nm;
	}
	public void setOwner_nm(String owner_nm) {
		this.owner_nm = owner_nm;
	}
	public String getBranch_owner_tel() {
		return branch_owner_tel;
	}
	public void setBranch_owner_tel(String branch_owner_tel) {
		this.branch_owner_tel = branch_owner_tel;
	}
	public String getBranch_owner_in_date() {
		return branch_owner_in_date;
	}
	public void setBranch_owner_in_date(String branch_owner_in_date) {
		this.branch_owner_in_date = branch_owner_in_date;
	}
	
	@Override
	public String toString() {
		return "BranchOwner [branch_owner_cd=" + branch_owner_cd + ", owner_num=" + owner_num + ", branch_owner_nm="
				+ branch_owner_nm + ", branch_owner_id=" + branch_owner_id + ", branch_owner_pw=" + branch_owner_pw
				+ ", branch_owner_addr=" + branch_owner_addr + ", owner_nm=" + owner_nm + ", branch_owner_tel="
				+ branch_owner_tel + ", branch_owner_in_date=" + branch_owner_in_date + "]";
	}
	
	
}

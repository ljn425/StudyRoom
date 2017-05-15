package com.monorella.srf.branch.dto;

import java.util.List;

public class SeatRowCol {
	
	private List<Integer>	seat_cnumber; //열람석 번호
	private List<String> seat_rowcol; //열람석 행 열
	private List<Integer> seat_row; //열람석 행
	private List<Integer> seat_col; //열람석 열
	//private List<>List<Seat> seats; //열람석 리스트 
	public List<Integer> getSeat_cnumber() {
		return seat_cnumber;
	}
	public void setSeat_cnumber(List<Integer> seat_cnumber) {
		this.seat_cnumber = seat_cnumber;
	}
	public List<String> getSeat_rowcol() {
		return seat_rowcol;
	}
	public void setSeat_rowcol(List<String> seat_rowcol) {
		this.seat_rowcol = seat_rowcol;
	}
	public List<Integer> getSeat_row() {
		return seat_row;
	}
	public void setSeat_row(List<Integer> seat_row) {
		this.seat_row = seat_row;
	}
	public List<Integer> getSeat_col() {
		return seat_col;
	}
	public void setSeat_col(List<Integer> seat_col) {
		this.seat_col = seat_col;
	}
	@Override
	public String toString() {
		return "SeatRowCol [seat_cnumber=" + seat_cnumber + ", seat_rowcol=" + seat_rowcol + ", seat_row=" + seat_row
				+ ", seat_col=" + seat_col + "]";
	}

	
}

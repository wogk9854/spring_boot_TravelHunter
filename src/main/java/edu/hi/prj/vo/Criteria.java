package edu.hi.prj.vo;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Data
@Getter
@Setter
@ToString

public class Criteria{
	
	private int pageNum;
	private int amount;
	private int rowStart;
	private int rowEnd;
	
	public Criteria() {
		this.pageNum = 1;
		this.amount = 10;
	}
	
	public void setPage(int pageNum) {
		if (pageNum <= 0) {
			this.pageNum = 1;
			return;
		}
		this.pageNum = pageNum;
	}
	
	public void setPerPageNum(int amount) {
		if (amount <= 0 || amount > 100) {
			this.amount = 10;
			return;
		}
		this.amount = amount;
	}	
	
	public int getPageStart() {
		return (this.pageNum - 1) * amount;
	}
	

	public int getRowStart() {
		rowStart = ((pageNum - 1) * amount) + 1;
		return rowStart;
	}
	
	public int getRowEnd() {
		rowEnd = rowStart + amount - 1;
		return rowEnd;
	}

	

	
	

}
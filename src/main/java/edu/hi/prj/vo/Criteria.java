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
	
	private String searchType;
	private String searchName;
	
	public Criteria() {
		this(1,10);
	}

	public Criteria(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}
	

}

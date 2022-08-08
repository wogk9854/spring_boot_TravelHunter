package edu.hi.prj.vo;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Data
@Getter
@Setter
@ToString

public class PheedCriteria{
	
	private int pageNum;
	private int amount;
	
	public PheedCriteria() {
		this(1,6);
	}

	public PheedCriteria(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}
	

}

package edu.hi.prj.vo;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Data
@Getter
@Setter
@ToString

public class SearchCriteria extends Criteria{
	private String searchType = "";
	private String keyword = "";
	
	

}

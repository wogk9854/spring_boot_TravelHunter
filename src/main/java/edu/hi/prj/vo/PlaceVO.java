package edu.hi.prj.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Data
@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class PlaceVO{
	private int num;
	private String member_id;
	private String pname;
	private String location;
	private int pphone;
	
	private double placeAvgGrade;
	private String iname;
	private int price;

}

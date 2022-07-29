package edu.hi.prj.vo;

import java.util.List;

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
public class PlaceDetailVO{
	private int num;
	private String member_id;
	private String pname;
	private String location;
	private int pphone;
	
	private int review;
	private double grade;
	
}

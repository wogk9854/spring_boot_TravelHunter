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
public class RoomVO{
	private int num;
	private int place_num;
	private int price;
	private int capacity;
	private String rinfo;
	private String rname;
	
	private List<String> iname;
}

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
public class ImageVO{
	private int num;
	private int board_id;
	private int room_num;
	private int image_type_num;
	private String iname;
	private String ipath;
	private String ioriname;
}

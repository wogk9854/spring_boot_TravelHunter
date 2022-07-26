package edu.hi.prj.vo;

import java.sql.Timestamp;

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
public class ReplyVO{
	private int num;
	private int board_id;
	private String member_id;
	private String reply;
	private Timestamp bdate;
}

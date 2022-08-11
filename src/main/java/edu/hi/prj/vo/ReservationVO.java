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
public class ReservationVO {
	private int num;
	private String member_id;
	private int room_num;
	private int place_num;
	private Timestamp startdate;
	private Timestamp enddate;
}

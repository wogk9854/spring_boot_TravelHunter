package edu.hi.prj.service;

import java.util.List;

import edu.hi.prj.vo.RoomVO;
import edu.hi.prj.vo.RsvRoomVO;

public interface RoomService{
	
	List<RoomVO> getRoom(int num);
	List<RsvRoomVO> getRsvRoom(int num,String rdate);
	List<String> getImgList();
	
}

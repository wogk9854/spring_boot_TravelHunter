package edu.hi.prj.service;

import java.util.List;

import edu.hi.prj.vo.RoomVO;

public interface RoomService{
	
	List<RoomVO> getRoom(int num);
	List<String> getImgList();
	
}

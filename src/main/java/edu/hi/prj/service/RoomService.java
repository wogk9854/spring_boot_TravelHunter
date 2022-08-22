package edu.hi.prj.service;

import java.util.List;

import edu.hi.prj.vo.RoomVO;

public interface RoomService{
	
	List<RoomVO> getRoom(int num,String startdate, String enddate);//예약가능한 객실 조회
	List<RoomVO> getMyRoom(int num);//해당 캠핑장의 객실 조회
	List<String> getImgList();// 객실 이미지들 가져오기
	
}

package edu.hi.prj.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import edu.hi.prj.vo.RoomVO;
import edu.hi.prj.vo.RsvRoomVO;

@Mapper
public interface RoomMapper{
	
	List<RoomVO> getRoom(int num);
	List<RsvRoomVO> getRsvRoom(int num,String rdate);
	List<String> getImgList();
	
}

package edu.hi.prj.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import edu.hi.prj.vo.RoomVO;

@Mapper
public interface RoomMapper{
	
	List<RoomVO> getRoom(int num);
	
}

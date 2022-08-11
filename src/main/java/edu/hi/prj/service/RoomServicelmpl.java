package edu.hi.prj.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.hi.prj.mapper.RoomMapper;
import edu.hi.prj.vo.RoomVO;
import edu.hi.prj.vo.RsvRoomVO;

@Service
public class RoomServicelmpl implements RoomService{
	@Autowired
	private RoomMapper mapper;

	@Override
	public List<RoomVO> getRoom(int num) {
		
		return mapper.getRoom(num);
	}

	@Override
	public List<String> getImgList() {
		
		return mapper.getImgList();
	}

	@Override
	public List<RsvRoomVO> getRsvRoom(int num,String rdate) {
		
		return mapper.getRsvRoom(num,rdate);
	}

	
}

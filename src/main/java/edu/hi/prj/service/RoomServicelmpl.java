package edu.hi.prj.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.hi.prj.mapper.RoomMapper;
import edu.hi.prj.vo.RoomVO;

@Service
public class RoomServicelmpl implements RoomService{
	@Autowired
	private RoomMapper mapper;

	@Override
	public List<RoomVO> getRoom(int num, String startdate, String enddate) {
		
		return mapper.getRoom(num,startdate,enddate);
	}

	@Override
	public List<String> getImgList() {
		
		return mapper.getImgList();
	}

	@Override
	public List<RoomVO> getMyRoom(int num) {
		
		return mapper.getMyRoom(num);
	}

	
}

package edu.hi.prj.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.hi.prj.mapper.ReservationMapper;
import edu.hi.prj.vo.PlaceVO;

@Service
public class ReservationServiceImpl implements ReservationService{
	@Autowired
	private ReservationMapper mapper;

	@Override
	public List<PlaceVO> getAllPlace() {
		
		return mapper.getAllPlace();
	}

}

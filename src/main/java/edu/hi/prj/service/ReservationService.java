package edu.hi.prj.service;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import edu.hi.prj.vo.BoardVO;
import edu.hi.prj.vo.PlaceVO;

public interface ReservationService{
	
	List<PlaceVO> getAllPlace();
}

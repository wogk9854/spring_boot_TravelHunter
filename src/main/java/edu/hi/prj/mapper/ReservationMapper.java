package edu.hi.prj.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import edu.hi.prj.vo.BoardVO;
import edu.hi.prj.vo.PlaceVO;

@Mapper
public interface ReservationMapper{
	
	List<PlaceVO> getAllPlace();

}

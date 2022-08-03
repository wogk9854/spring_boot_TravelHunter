package edu.hi.prj.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.hi.prj.mapper.PlaceMapper;
import edu.hi.prj.vo.PlaceDetailVO;
import edu.hi.prj.vo.PlaceVO;

@Service
public class PlaceServiceImpl implements PlaceService{
	@Autowired
	private PlaceMapper mapper;

	@Override
	public double getPlaceGrade() {
		
		return mapper.getPlaceGrade();
	}

	@Override
	public List<PlaceVO> getPlaceData() {
		
		return mapper.getPlaceData();
	}

	@Override
	public String getPlaceImg() {
		
		return mapper.getPlaceImg();
	}

	@Override
	public int getPriceList() {
		
		return mapper.getPriceList();
	}

	@Override
	public PlaceDetailVO getPlaceDetail(int num) {
		
		return mapper.getPlaceDetail(num);
	}

	@Override
	public int getReviewCountList(int num) {
		
		return mapper.getReviewCountList(num);
	}

	@Override
	public double getGrade(int num) {
		// TODO Auto-generated method stub
		return mapper.getGrade(num);
	}

	@Override
	public List<String> getPlaceDetailImg(int num) {
		
		return mapper.getPlaceDetailImg(num);
	}



}
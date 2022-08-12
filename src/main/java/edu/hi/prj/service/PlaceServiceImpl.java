package edu.hi.prj.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.hi.prj.mapper.PlaceMapper;
import edu.hi.prj.vo.ImageVO;
import edu.hi.prj.vo.PlaceDetailVO;
import edu.hi.prj.vo.PlaceVO;
import edu.hi.prj.vo.Place_TypeVO;
import edu.hi.prj.vo.RoomVO;

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
		
		return mapper.getGrade(num);
	}

	@Override
	public List<String> getPlaceDetailImg(int num) {
		
		return mapper.getPlaceDetailImg(num);
	}

	@Override
	public void registerPlace(PlaceVO placeVO) {
		
		mapper.registerPlace(placeVO);
	}

	@Override
	public void registerPlace_Type(Place_TypeVO place_TypeVO) {
		
		mapper.registerPlace_Type(place_TypeVO);
	}

	@Override
	public void registerRoom(RoomVO roomVO) {
		
		mapper.registerRoom(roomVO);//객실 등록
	}

	@Override
	public void imginsert(ImageVO imageVO) {
		
		mapper.imginsert(imageVO);//img업로드
	}

	@Override
	public List<PlaceVO> filtering() {
		
		return mapper.filtering();
	}



}

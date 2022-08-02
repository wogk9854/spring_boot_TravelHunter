package edu.hi.prj.service;

import java.util.List;

import edu.hi.prj.vo.PlaceDetailVO;
import edu.hi.prj.vo.PlaceVO;

public interface PlaceService{
	
	List<PlaceVO> getPlaceData();
	double getPlaceGrade();
	String getPlaceImg();
	int getPriceList();
	
	PlaceDetailVO getPlaceDetail(int num);
	int getReviewCountList(int num);
	double getGrade(int num);
	List<String> getPlaceDetailImg(int num);
}

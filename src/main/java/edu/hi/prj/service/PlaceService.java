package edu.hi.prj.service;

import java.util.List;

import edu.hi.prj.vo.PlaceAvgGradeVO;
import edu.hi.prj.vo.PlaceDetailVO;
import edu.hi.prj.vo.PlaceImgVO;
import edu.hi.prj.vo.PlaceVO;
import edu.hi.prj.vo.PriceVO;

public interface PlaceService{
	
	List<PlaceVO> getPlaceData();
	PlaceAvgGradeVO getPlaceGrade();
	PlaceImgVO getPlaceImg();
	List<PriceVO> getPriceList();
	
	PlaceDetailVO getPlaceDetail(int num);
	int getReviewCountList(int num);
	double getGrade(int num);
	List<String> getPlaceDetailImg(int num);
}

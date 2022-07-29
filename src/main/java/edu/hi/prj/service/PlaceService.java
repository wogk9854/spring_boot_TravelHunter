package edu.hi.prj.service;

import java.util.List;

import edu.hi.prj.vo.PlaceAvgGradeVO;
import edu.hi.prj.vo.PlaceDetailVO;
import edu.hi.prj.vo.PlaceImgVO;
import edu.hi.prj.vo.PlaceVO;
import edu.hi.prj.vo.PriceVO;
import edu.hi.prj.vo.ReviewCountVO;

public interface PlaceService{
	
	List<PlaceAvgGradeVO> getPlaceGrade();
	List<PlaceVO>getPlaceData();
	List<PlaceImgVO>getPlaceImg();
	List<PriceVO>getPriceList();
	
	PlaceDetailVO getPlaceDetail(int num);
	int getReviewCountList(int num);
}

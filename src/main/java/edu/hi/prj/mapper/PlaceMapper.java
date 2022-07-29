package edu.hi.prj.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import edu.hi.prj.vo.PlaceAvgGradeVO;
import edu.hi.prj.vo.PlaceDetailVO;
import edu.hi.prj.vo.PlaceImgVO;
import edu.hi.prj.vo.PlaceVO;
import edu.hi.prj.vo.PriceVO;
import edu.hi.prj.vo.ReviewCountVO;

@Mapper
public interface PlaceMapper{
	
	List<PlaceVO>getPlaceData();// 캠핑장 정보List 불러오기
	List<PlaceAvgGradeVO> getPlaceGrade();// 해당 캠핑장 평균 평점 불러오기
	List<PlaceImgVO>getPlaceImg(); // 해당 캠핑장 대표사진 불러오기
	List<PriceVO>getPriceList(); // 해당 캠핑장 대표객실 가격 불러오기
	
	//캠핑장 상세페이지
	PlaceDetailVO getPlaceDetail(int num);
	int getReviewCountList(int num);
}

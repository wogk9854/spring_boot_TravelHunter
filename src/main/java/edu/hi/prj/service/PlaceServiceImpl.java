package edu.hi.prj.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.hi.prj.mapper.PlaceMapper;
import edu.hi.prj.vo.PlaceAvgGradeVO;
import edu.hi.prj.vo.PlaceDetailVO;
import edu.hi.prj.vo.PlaceImgVO;
import edu.hi.prj.vo.PlaceVO;
import edu.hi.prj.vo.PriceVO;
import edu.hi.prj.vo.ReviewCountVO;

@Service
public class PlaceServiceImpl implements PlaceService{
	@Autowired
	private PlaceMapper mapper;

	@Override
	public List<PlaceAvgGradeVO> getPlaceGrade() {
		
		return mapper.getPlaceGrade();
	}

	@Override
	public List<PlaceVO> getPlaceData() {
		
		return mapper.getPlaceData();
	}

	@Override
	public List<PlaceImgVO> getPlaceImg() {
		
		return mapper.getPlaceImg();
	}

	@Override
	public List<PriceVO> getPriceList() {
		
		return mapper.getPriceList();
	}

	@Override
	public PlaceDetailVO getPlaceDetail(int num) {
		
		return mapper.getPlaceDetail(num);
	}

	@Override
	public int getReviewCountList(int num) {
		// TODO Auto-generated method stub
		return mapper.getReviewCountList(num);
	}

}

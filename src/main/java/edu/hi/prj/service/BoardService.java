package edu.hi.prj.service;

import java.util.List;

import edu.hi.prj.vo.BoardVO;
import edu.hi.prj.vo.ImageVO;
import edu.hi.prj.vo.ReviewImgVO;

public interface BoardService{
	List<BoardVO> getList(int type);
	List<BoardVO> getHotList(int type);
	BoardVO getBoard(int id);
	void write(BoardVO boardVO);
	List<BoardVO> searchList(String member_id);
	int update(BoardVO boardVO);
	int delete(BoardVO boardVO);
	int updateView(int id);
	int imginsert(ImageVO imageVO);
	int boardGetid(BoardVO boardVO);
	
	
	List<BoardVO> getReview(int place_num);
	List<ReviewImgVO> getReviewImgList(int num);
	int replyCount(int num);
	
}

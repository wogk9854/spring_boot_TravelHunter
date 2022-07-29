package edu.hi.prj.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.hi.prj.mapper.BoardMapper;
import edu.hi.prj.vo.BoardVO;

@Service
public class BoardServiceImpl implements BoardService{
	@Autowired
	private BoardMapper mapper;
	
	@Override
	public List<BoardVO> getList(int type) {
		
		return mapper.getList(type);
	}
	
	@Override
	public List<BoardVO> getHotList(int type) {
		
		return mapper.getHotList(type);
	}
	
	@Override
	public void write(BoardVO boardVO) {
		mapper.insert(boardVO);
	}

	@Override
	public List<BoardVO> searchList(String member_id) {
		
		return mapper.searchList(member_id);
	}

	@Override
	public BoardVO getBoard(int id) {
		
		return mapper.getBoard(id);
	}
	
	@Override
	public int update(BoardVO boardVO) {
		
		return mapper.update(boardVO);
	}
	
	@Override
	public int delete(BoardVO boardVO) {
		return mapper.delete(boardVO);
	}
	
	@Override
	public int updateView(int id) {
		return mapper.updateView(id);
	}

	@Override
	public List<BoardVO> getReview(int place_num) {
		
		return mapper.getReview(place_num);
	}

	

}

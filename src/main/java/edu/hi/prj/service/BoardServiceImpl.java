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
	public List<BoardVO> getList() {
		// TODO Auto-generated method stub
		return mapper.getList();
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
		// TODO Auto-generated method stub
		return mapper.getBoard(id);
	}

}

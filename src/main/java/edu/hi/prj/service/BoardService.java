package edu.hi.prj.service;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import edu.hi.prj.vo.BoardVO;

public interface BoardService{
	List<BoardVO> getList(int type);
	BoardVO getBoard(int id);
	void write(BoardVO boardVO);
	List<BoardVO> searchList(String member_id);
}

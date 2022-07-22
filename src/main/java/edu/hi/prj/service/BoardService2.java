package edu.hi.prj.service;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import edu.hi.prj.vo.BoardVO;

public interface BoardService2{
	List<BoardVO> getList();
	BoardVO getBoard(int bid);
	void write(BoardVO boardVO);
	List<BoardVO> searchList(String bname);
}

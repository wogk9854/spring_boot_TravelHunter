package edu.hi.prj.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import edu.hi.prj.vo.BoardVO;

@Mapper
public interface BoardMapper{
	List<BoardVO> getList(int type);
	BoardVO getBoard(int id);
	void insert(BoardVO boardVO);
	List<BoardVO> searchList(String member_id);
	int update(BoardVO boardVO);
	int delete(BoardVO boardVO);

}

package edu.hi.prj.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import edu.hi.prj.vo.BoardVO;

@Mapper
public interface BoardMapper{
	List<BoardVO> getList();	//글 전체 리스트 가져오기
	BoardVO getBoard(int bid); // n글 정보 가져오기
	void insert(BoardVO boardVO);
	List<BoardVO> searchList(String bname); //검색조건에 맞는 글 불러오기

}

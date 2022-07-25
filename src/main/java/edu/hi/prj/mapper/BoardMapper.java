package edu.hi.prj.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import edu.hi.prj.vo.BoardVO;

@Mapper
public interface BoardMapper{
	List<BoardVO> getList();	//湲� �쟾泥� 由ъ뒪�듃 媛��졇�삤湲�
	BoardVO getBoard(int id); // n湲� �젙蹂� 媛��졇�삤湲�
	void insert(BoardVO boardVO);
	List<BoardVO> searchList(String member_id); //寃��깋議곌굔�뿉 留욌뒗 湲� 遺덈윭�삤湲�

}

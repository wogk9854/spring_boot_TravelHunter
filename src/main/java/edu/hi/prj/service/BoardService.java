package edu.hi.prj.service;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import edu.hi.prj.vo.BoardVO;

public interface BoardService{
	List<BoardVO> getList();

}

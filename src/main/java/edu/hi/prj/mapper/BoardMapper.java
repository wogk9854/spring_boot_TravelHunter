package edu.hi.prj.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import edu.hi.prj.vo.BoardVO;

@Mapper
public interface BoardMapper{
	List<BoardVO> getList();

}

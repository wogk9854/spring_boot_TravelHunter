package edu.hi.prj.mapper;

import org.apache.ibatis.annotations.Mapper;

import edu.hi.prj.vo.MemberVO;

@Mapper
public interface MemberMapper{
	void create(MemberVO memberVO);
	MemberVO logincheck(MemberVO memberVO);
	int idcheck(MemberVO memberVO);
	
}

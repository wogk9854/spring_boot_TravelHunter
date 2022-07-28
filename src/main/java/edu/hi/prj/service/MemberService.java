package edu.hi.prj.service;

import edu.hi.prj.vo.MemberVO;

public interface MemberService{
	void create(MemberVO memberVO);
	MemberVO logincheck(MemberVO memberVO);
	int idcheck(MemberVO memberVO);
}

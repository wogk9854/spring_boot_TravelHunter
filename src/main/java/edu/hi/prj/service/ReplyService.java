package edu.hi.prj.service;

import java.util.List;

import edu.hi.prj.vo.ReplyVO;

public interface ReplyService{
	public List<ReplyVO> getList(int id);
	void write(ReplyVO replyVO);
	int delete(ReplyVO replyVO);
	ReplyVO getReply(int num);
	int replyCount(int count);
	
	
}

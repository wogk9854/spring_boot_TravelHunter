package edu.hi.prj.service;

import java.util.List;

import edu.hi.prj.vo.ReplyVO;

public interface ReplyService{
	List<ReplyVO> getList();
	void write(ReplyVO replyVO);
	int delete(ReplyVO replyVO);
	ReplyVO getReply(int num);
}

package edu.hi.prj.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.hi.prj.mapper.ReplyMapper;
import edu.hi.prj.vo.BoardVO;
import edu.hi.prj.vo.ReplyVO;

@Service
public class ReplyServicelmpl implements ReplyService{
	@Autowired
	private ReplyMapper mapper;
	
	@Override
	public List<ReplyVO> getList(){
		return mapper.getList();
	}
	
	@Override
	public void write(ReplyVO replyVO) {
		mapper.insert(replyVO);
	}
	
	@Override
	public int delete(ReplyVO replyVO) {
		
		return mapper.delete(replyVO);
	}
	
	@Override
	public ReplyVO getReply(int num) {
		
		return mapper.getReply(num);
	}
	
}

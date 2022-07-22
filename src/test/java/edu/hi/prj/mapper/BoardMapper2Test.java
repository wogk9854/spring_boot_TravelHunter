package edu.hi.prj.mapper;

import java.util.List;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import edu.hi.prj.vo.BoardVO;

@SpringBootTest
class BoardMapper2Test {

	@Autowired
	private BoardMapper2 mapper;
	
	@Test
	void testgetList() {
		
		List<BoardVO> list = mapper.getList();
		
		for(BoardVO board : list) {
			System.out.println(board.getBid());
		}
		
	}

}

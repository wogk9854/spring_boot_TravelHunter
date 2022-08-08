package edu.hi.prj.mapper;

import java.util.List;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import edu.hi.prj.vo.BoardImgVO;
import edu.hi.prj.vo.BoardVO;

@SpringBootTest
class BoardMapperTest {

	@Autowired
	private BoardMapper mapper;
	
	@Test
	void testgetList() {
			
		List<BoardImgVO> img = mapper.getBoardImg();
		
		
		List<BoardVO> list = mapper.getList(0);
		
		for(BoardImgVO board : img) {
			System.out.println(board);
		}
		
	}

}

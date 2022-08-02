package edu.hi.prj.mapper;

import java.util.List;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import edu.hi.prj.vo.ReviewImgVO;

@SpringBootTest
class PlaceMapperTest {
	
	@Autowired
	private BoardMapper  mapper;
	
	
	@Test
	void test() {
		
		List<ReviewImgVO> img = mapper.getReviewImgList(5);
		
		for(ReviewImgVO i:img) {
			System.out.println(i);
		}
		
		
		System.out.println("suscess");
		
	}

}

package edu.hi.prj.mapper;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import edu.hi.prj.vo.PlaceDetailVO;

@SpringBootTest
class PlaceMapperTest {
	
	@Autowired
	private PlaceMapper mapper;
	
	
	@Test
	void test() {
		
		
		
		System.out.println(mapper.getPlaceDetail(5).getReviewCountList()); 
		
		
		System.out.println("suscess");
		
	}

}

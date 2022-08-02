package edu.hi.prj.mapper;

import java.util.List;

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
		
		PlaceDetailVO p = mapper.getPlaceDetail(5);
		
		System.out.println(p);
		System.out.println(p.getReview());
		System.out.println(p.getGrade());
		
		List<String> img = p.getIpath();
		for(String i: img) {
			System.out.println(i);
		}
		
		System.out.println("suscess");
		
	}

}

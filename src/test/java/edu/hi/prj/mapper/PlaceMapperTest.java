package edu.hi.prj.mapper;

import java.util.List;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import edu.hi.prj.vo.PlaceVO;

@SpringBootTest
class PlaceMapperTest {
	
	@Autowired
	private PlaceMapper  mapper;
	
	
	@Test
	void test() {
		
		List<PlaceVO> p = mapper.getPlaceData();
		
		for(PlaceVO place:p) {
			System.out.println(place);
		}
		
	}

}

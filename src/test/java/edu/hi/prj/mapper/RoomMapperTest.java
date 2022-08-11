package edu.hi.prj.mapper;

import java.util.List;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.util.SystemPropertyUtils;

import edu.hi.prj.vo.RsvRoomVO;

@SpringBootTest
class RoomMapperTest {
	
	@Autowired
	private RoomMapper mapper;
	
	
	@Test
	void test() {
		List<RsvRoomVO> r = mapper.getRsvRoom(28);
		
		for(RsvRoomVO p:r) {
			System.out.println(p);
		}
	}

}

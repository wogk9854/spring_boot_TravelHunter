package edu.hi.prj.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/mypage")
public class MypageController {


	
	@GetMapping("")
	public String maypage() {
		
		
		
		
		
		return "/mypage/mypage";
	}
	

}

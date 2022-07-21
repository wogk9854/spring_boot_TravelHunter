package edu.hi.prj.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/pheed")
@Controller
public class PheedController {

	@GetMapping("")
	public String pheed() {
		
		return "/pheed/pheed";
	}
	

}

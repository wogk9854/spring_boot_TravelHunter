package edu.hi.prj.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/place")
@Controller
public class PlaceController {

	@GetMapping("")
	public String place() {
		
		return "/place/place";
	}
	
	@GetMapping("/introduce")
	public String introduce() {
		
		return "/place/introduce";
	}
	
	@GetMapping("/monthspot")
	public String monthspot() {
		
		return "/place/monthspot";
	}
}

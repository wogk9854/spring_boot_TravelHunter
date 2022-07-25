package edu.hi.prj.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import edu.hi.prj.service.BoardService;

@RequestMapping("/pheed")
@Controller
public class PheedController {

	@Autowired
	private BoardService service;
	
	@GetMapping("")
	public String pheed(Model model) {
		model.addAttribute("boardList", service.getList());
		
		return "/pheed/pheed";
	}
	

}

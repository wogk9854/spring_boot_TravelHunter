package edu.hi.prj.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import edu.hi.prj.service.BoardService;
import edu.hi.prj.vo.BoardVO;

@RequestMapping("/review")
@Controller
public class ReviewController {

	@Autowired
	private BoardService service;
	
	@GetMapping("")
	public String review(Model model) {
		
		model.addAttribute("boardList", service.getList(1));
		
		return "/review/review";
	}
	
	

}

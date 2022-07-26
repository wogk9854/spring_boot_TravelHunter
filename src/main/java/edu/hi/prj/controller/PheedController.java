package edu.hi.prj.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import edu.hi.prj.service.BoardService;
import edu.hi.prj.vo.BoardVO;

@RequestMapping("/pheed")
@Controller
public class PheedController {

	@Autowired
	private BoardService service;
	
	@GetMapping("")
	public String pheed(Model model) {
		
		model.addAttribute("boardList", service.getList(0));
		
		return "/pheed/pheed";
	}
	
	@GetMapping("/detail")
	public String detail(Model model,BoardVO boardVO) {
		
		int id = boardVO.getId();
		
		service.updateView(id);
		
		model.addAttribute("data",service.getBoard(id));
		
		return "/pheed/detail";
	}
	
	@GetMapping("/write")
		public String write() {
			
			return "/pheed/pheedwrite";
		
		
	}
	
	@PostMapping("/complete")
	public String complete(BoardVO boardVO) {
		
		service.write(boardVO);
		
		return "redirect:/pheed";
	}
	

}

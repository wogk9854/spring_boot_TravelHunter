package edu.hi.prj.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import edu.hi.prj.service.BoardService2;
import edu.hi.prj.vo.BoardVO;


@RequestMapping("/qna2")
@Controller
public class Qna2Controller {

	@Autowired
	private BoardService2 service;
	
	@GetMapping("")
	public String place(Model model) {
		
		model.addAttribute("boardList",service.getList());
		
		return "/qna2/qna";
	}
	
	@GetMapping("/write")
	public String write() {
		
		return "/qna2/write";
	}
		
	@PostMapping("/complete")
	public String complete(Model model,BoardVO boardVO) {
		
		service.write(boardVO);
		
		return "redirect:/qna2";
	}
	
	@GetMapping("/search")
	public String search(Model model,BoardVO boardVO) {
		
		String bname = boardVO.getBname();
		model.addAttribute("boardList",service.searchList(bname));
		
		return "/qna2/qna";
	}
	
	@GetMapping("/detail")
	public String detail(Model model,BoardVO boardVO) {
		
		int bid = boardVO.getBid(); 
		model.addAttribute("data",service.getBoard(bid));
		
		return "/qna2/detail";
	}
	
}

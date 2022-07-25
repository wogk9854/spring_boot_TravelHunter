package edu.hi.prj.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import edu.hi.prj.service.BoardService;
import edu.hi.prj.vo.BoardVO;


@RequestMapping("/qna")
@Controller
public class QnaController {

	@Autowired
	private BoardService service;
	
	@GetMapping("")
	public String place(Model model) {
		
		model.addAttribute("boardList",service.getList());
		
		return "/qna/qna";
	}
	
	@GetMapping("/write")
	public String write() {
		
		return "/qna/write";
	}
		
	@PostMapping("/complete")
	public String complete(Model model,BoardVO boardVO) {
		
		service.write(boardVO);
		
		return "redirect:/qna";
	}
	
	@GetMapping("/search")
	public String search(Model model,BoardVO boardVO) {
		
		String bname = boardVO.getMember_id();
		model.addAttribute("boardList",service.searchList(bname));
		
		return "/qna/qna";
	}
	
	@GetMapping("/detail")
	public String detail(Model model,BoardVO boardVO) {
		
		int id = boardVO.getId();
		model.addAttribute("data",service.getBoard(id));
		
		return "/qna/detail";
	}
	
}
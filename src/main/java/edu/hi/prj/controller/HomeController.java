package edu.hi.prj.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import edu.hi.prj.service.BoardServiceImpl;
import edu.hi.prj.service.MemberService;
import edu.hi.prj.vo.MemberVO;

@Controller
public class HomeController {

	@Autowired
	private BoardServiceImpl service;
	@Autowired
	private MemberService member_service;
	
	@GetMapping("/")
	public String main(Model model) {
		
		model.addAttribute("data",service.getHotList(0));
		
		return "/main/main";
	}
	
	@GetMapping("/login")
	public String login() {
		
		return "/login/login";
	}
	
	@GetMapping("/join")
	public String join() {
		
		return "/join/join";
	}
	
	//회원가입
	@PostMapping("/create")
	public String create(MemberVO memberVO) {
		member_service.create(memberVO);
		System.out.println("회원가입넘어옴");
		return "/login/login";
	}
		

}

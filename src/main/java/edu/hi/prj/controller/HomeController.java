package edu.hi.prj.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import edu.hi.prj.service.BoardServiceImpl;

@Controller
public class HomeController {

	@Autowired
	private BoardServiceImpl service;
	
	@GetMapping("/")
	public String main() {
		
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

}

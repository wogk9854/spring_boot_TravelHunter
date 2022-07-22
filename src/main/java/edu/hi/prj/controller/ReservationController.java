package edu.hi.prj.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import edu.hi.prj.service.BoardService2;


@RequestMapping("/reservation")
@Controller
public class ReservationController {
	
	@GetMapping("")
	public String reservation() {
		
		return "/reservation/reservation";
	}
		
	
}

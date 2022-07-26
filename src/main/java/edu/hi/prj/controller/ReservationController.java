package edu.hi.prj.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import edu.hi.prj.service.ReservationService;
import edu.hi.prj.vo.PlaceVO;


@RequestMapping("/reservation")
@Controller
public class ReservationController {
	
	@Autowired
	private ReservationService service;
	
	@GetMapping("")
	public String reservation(Model model, PlaceVO placeVO) {
		model.addAttribute("getAllPlace",service.getAllPlace());
		return "/reservation/reservation";
	}
	
	@GetMapping("/detail")
	public String detail() {
		
		return "/reservation/detail";
	}
		
	
}

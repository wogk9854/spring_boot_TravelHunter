package edu.hi.prj.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import edu.hi.prj.service.BoardService;
import edu.hi.prj.service.PlaceService;
import edu.hi.prj.service.RoomService;
import edu.hi.prj.vo.BookingVO;
import edu.hi.prj.vo.PlaceVO;


@RequestMapping("/product")
@Controller
public class ProductController {
	
	@Autowired
	private PlaceService service;
	
	@Autowired
	private RoomService rservice;
	
	@Autowired
	private BoardService bservice;
	
	@GetMapping("")
	public String reservation(Model model) {
		
		model.addAttribute("getPlaceData",service.getPlaceData());
		
		return "/product/product";
	}
	
	@GetMapping("/detail")
	public String detail(Model model,PlaceVO placeVO,BookingVO bookingVO) {
		
		int num = placeVO.getNum();
		String startdate = bookingVO.getStartdate();
		String enddate = bookingVO.getEnddate();
		
		model.addAttribute("placeDetail",service.getPlaceDetail(num));
		model.addAttribute("room",rservice.getRoom(num,startdate,enddate));
		model.addAttribute("imgList",rservice.getImgList());
		model.addAttribute("reviewList",bservice.getReview(num));
		model.addAttribute("reviewImgList",bservice.getReviewImgList(num));
		
		return "/product/detail";
	}
		
	
}

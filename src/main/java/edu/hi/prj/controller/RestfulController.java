package edu.hi.prj.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import edu.hi.prj.service.BoardService;
import edu.hi.prj.vo.BoardVO;
import lombok.extern.slf4j.Slf4j;
@Slf4j

@RequestMapping("/jason")
@RestController
public class RestfulController {
	
	@Autowired
	private BoardService service;
	
	@GetMapping("/boards/{id}")
	public BoardVO getBoard(BoardVO boardVO) {
		
		return service.getBoard(boardVO.getId());
	}

}




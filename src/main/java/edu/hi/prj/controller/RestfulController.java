package edu.hi.prj.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import edu.hi.prj.service.BoardService;
import edu.hi.prj.service.ReplyService;
import edu.hi.prj.service.RoomService;
import edu.hi.prj.vo.BoardVO;
import edu.hi.prj.vo.PlaceVO;
import edu.hi.prj.vo.ReplyVO;
import edu.hi.prj.vo.RoomVO;
import lombok.extern.slf4j.Slf4j;
@Slf4j

@RequestMapping("/json")
@RestController
public class RestfulController {
	
	@Autowired
	private BoardService bservice;
	
	@Autowired
	private ReplyService rservice;
	
	@Autowired
	private RoomService room_service;
	
	
	@GetMapping("/boards/{id}")
	public BoardVO getBoard(BoardVO boardVO) {
		
		return bservice.getBoard(boardVO.getId());
	}
	
	@GetMapping("/room/{num}")
	public List<RoomVO> getRoom(RoomVO roomVO,PlaceVO placeVO) {
		
		return room_service.getMyRoom(placeVO.getNum());
	}
	
	@GetMapping("/reply/{id}")
	public List<ReplyVO> getReply(BoardVO boardVO) {
		
		return rservice.getList(boardVO.getId());
		
	}
	
	@PutMapping("/{id}")
	public ResponseEntity<String> viewUpdate(BoardVO boardVO){
		
		ResponseEntity<String> entity = null;
		try {
			
			 int rn = bservice.updateView(boardVO.getId());
		     
			entity = new ResponseEntity<String>("SUCCESS",HttpStatus.OK);         
		     
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>("FAIL",HttpStatus.BAD_REQUEST);
		}
		  
		return entity;      
	}
	
	@PutMapping("/replyWrite")
	public ResponseEntity<String> reply(@RequestBody ReplyVO replyVO){
	
		ResponseEntity<String> entity = null;
		try {
			
			 rservice.write(replyVO);
		     
			entity = new ResponseEntity<String>("SUCCESS",HttpStatus.OK);         
		     
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>("FAIL",HttpStatus.BAD_REQUEST);
		}
		  
		return entity;      
	}
	
	
	
	
	}




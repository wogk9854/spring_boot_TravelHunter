package edu.hi.prj.controller;

import java.io.File;
import java.util.List;
import java.util.UUID;

import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import edu.hi.prj.service.PlaceService;
import edu.hi.prj.vo.ImageVO;
import edu.hi.prj.vo.PlaceVO;
import edu.hi.prj.vo.Place_TypeVO;
import edu.hi.prj.vo.RoomVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping("/manager")
@Controller
public class ManagerController {

	@Autowired
	private PlaceService place_service;
	
	@GetMapping("")
	public String manager() {
		
		return "/manager/manager";
	}
	
	@GetMapping("/registroom")
	public String registroom() {
		
		return "/manager/registroom";
	}
	
	@GetMapping("/registplace")
	public String registplace() {
		
		return "/manager/registplace";
	}
	
	@PostMapping("/registPlace")
	public String registPlace(PlaceVO placeVO) {
		
		place_service.registerPlace(placeVO);
		
		return "redirect:/manager";
	}
	
	@PostMapping("/registRoom")
	public String registRoom(RoomVO roomVO, Place_TypeVO place_TypeVO, List<MultipartFile> files, ImageVO imageVO) throws Exception {
		
		
		if(files.isEmpty()) {//업로드할파일없을시
			System.out.println("empty:::::::::::::::::::::::::::::::::");
		}else {
			System.out.println("start:::::::::::::::::::::::::::::::::");
			place_service.registerPlace_Type(place_TypeVO);
			place_service.registerRoom(roomVO);
			
			for(MultipartFile file:files) {
				String FileName = file.getOriginalFilename();
				String FileNameExtension = 
						FilenameUtils.getExtension(FileName).toLowerCase();
				File destinationFile;
				String destinationFileName;
				String fileUrl = "C:\\Temp\\spring_boot_TravelHunter\\src\\main\\resources\\static\\assets\\img\\rooms\\";
				
				do {
					UUID uuid = UUID.randomUUID();
					destinationFileName = uuid + "." + FileNameExtension;
					destinationFile = new File(fileUrl + destinationFileName);
				} while(destinationFile.exists());
				
				destinationFile.getParentFile().mkdirs();
				file.transferTo(destinationFile);
				
				imageVO.setRoom_num(roomVO.getNum());
				imageVO.setIname(destinationFileName);
				imageVO.setIoriname(FileName);
				imageVO.setIpath(fileUrl);
				
				place_service.imginsert(imageVO);//img업로드
				
			}
		
		}
		
		return "redirect:/manager";
	}

	
	
	
}

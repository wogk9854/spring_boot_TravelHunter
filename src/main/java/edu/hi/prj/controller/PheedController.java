package edu.hi.prj.controller;

import java.io.File;
import java.util.UUID;

import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import edu.hi.prj.service.BoardService;
import edu.hi.prj.service.ReplyService;
import edu.hi.prj.vo.BoardVO;
import edu.hi.prj.vo.ImageVO;
import edu.hi.prj.vo.PheedCriteria;
import edu.hi.prj.vo.PheedPagingVO;
import edu.hi.prj.vo.ReplyVO;

@RequestMapping("/pheed")
@Controller
public class PheedController {

	@Autowired
	private BoardService service;
	
	@Autowired
	private ReplyService reply_service;
	
	@GetMapping("")
	public String pheed(Model model, PheedCriteria cri) {
		
		model.addAttribute("boardList", service.pheedpaging(cri));
		int total =service.pheedCount();
		model.addAttribute("pageMaker", new PheedPagingVO(cri, total));
		return "/pheed/pheed";
	}
	
	@GetMapping("/detail")
	public String detail(Model model,BoardVO boardVO) {
		model.addAttribute("boardList", service.getList(0));
		int id = boardVO.getId();
		service.updateView(id);
		model.addAttribute("data",service.getBoard(id));
		model.addAttribute("reply", reply_service.getList(id));
		
		return "/pheed/pheeddetail";
	}
	
	@GetMapping("/write")
		public String write() {
			
			return "/pheed/pheedwrite";
		
		
	}
	
	@PostMapping("/complete")
	public String complete(BoardVO boardVO, MultipartFile files, ImageVO imageVO, MultipartFile[] file) throws Exception {
		 
		
			String FileName = files.getOriginalFilename();
			String FileNameExtension = 
					FilenameUtils.getExtension(FileName).toLowerCase();
			File destinationFile;
			String destinationFileName;
			String fileUrl = "C:\\Users\\pc-09\\Desktop\\spring_boot_TravelHunter\\src\\main\\resources\\static\\pheedimg\\1";
			
			do {
				UUID uuid = UUID.randomUUID();
				destinationFileName = uuid + "." + FileNameExtension;
				destinationFile = new File(fileUrl + destinationFileName);
			} while(destinationFile.exists());
			
			destinationFile.getParentFile().mkdirs();
			files.transferTo(destinationFile);
			service.write(boardVO);//작성
			
			imageVO.setBoard_id(service.boardGetid(boardVO));
			imageVO.setIname(destinationFileName);
			imageVO.setIoriname(FileName);
			imageVO.setIpath(fileUrl);
		
			service.imginsert(imageVO);//img업로드
		
		return "redirect:/pheed";
	}
	
	@PostMapping("/replywrite")
	public String replyWrite(ReplyVO replyVO) {
		reply_service.write(replyVO);
		
		return "redirect:";
		
	}
	
	@PostMapping("/delete")
	public String delete(BoardVO boardVO) {
		service.delete(boardVO);
		return "redirect:/pheed";
	}
	
	
	

}

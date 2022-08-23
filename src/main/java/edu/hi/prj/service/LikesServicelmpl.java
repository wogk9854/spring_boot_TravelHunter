package edu.hi.prj.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.hi.prj.mapper.LikesMapper;

@Service
public class LikesServicelmpl implements LikesService{
	@Autowired
	LikesMapper mapper;
	
	
	@Override
	public void likecreate() {
		mapper.likecreate();
		
	}

	@Override
	public int likeread() {
		return mapper.likeread();
	}

	@Override
	public int likedelete() {
		return mapper.likedelete();
	}
	

	
}

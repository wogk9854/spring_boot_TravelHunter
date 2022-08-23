package edu.hi.prj.mapper;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface LikesMapper {
	void likecreate();
	int likeread();
	int likedelete();
	
	
	
}


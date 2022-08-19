package edu.hi.prj.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;

import edu.hi.prj.vo.UserVO;

@Mapper
public interface UserMapper {

	UserVO getUser(String username);
	
	@Insert("insert into member(id,mpw,mname,nick_name,memail,mphone,mbirth) values(#{username},#{password},#{mname},#{nick_name},#{memail},#{mphone},#{mbirth})")
	public int insertUser(UserVO userVO);

	@Insert("insert into AUTHORITY (member_id,AUTH_NUM) values(#{username},'0')")
	public void insertAuthorities(UserVO userVO);
	
}


package edu.hi.prj.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import edu.hi.prj.vo.UserDetailsVO;
import edu.hi.prj.vo.UserVO;
import lombok.Getter;

@Mapper
public interface UserMapper {
	
	UserVO getUser(String username);
	

	
	@Insert("insert into member(id,mpw,mname,nick_name,memail,mphone,mbirth) values(#{username},#{password},#{mname},#{nick_name},#{memail},#{mphone},#{mbirth})")
	public int insertUser(UserVO userVO);

	@Insert("insert into AUTHORITY (member_id,AUTH_NUM) values(#{username},'0')")
	public void insertAuthorities(UserVO userVO);
	
	@Insert("insert into member(id, mpw, mname, memail) values(#{username},#{password},#{mname},#{memail})")
	public int insertgoogle(String username, String password, String mname, String memail);
	
	@Insert("insert into AUTHORITY (member_id,AUTH_NUM) values(#{username},'0')")
	public void insertAuthoritiesgoogle(String username);
	@Select("select id username, mpw password, mname, nick_name, memail, mphone, mbirth, payment from member where id = #{username}")
	public UserVO userinfo(String username);
	
	
}


package edu.hi.prj.vo;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

/*
-------- -------- ------------- 
USERNAME NOT NULL VARCHAR2(50)  
PASSWORD NOT NULL VARCHAR2(100) 
ENABLED           CHAR(1)    
*/

@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class UserVO {
	private String username;
	private String password;
	
	private List<AuthVO> authList;
	
}

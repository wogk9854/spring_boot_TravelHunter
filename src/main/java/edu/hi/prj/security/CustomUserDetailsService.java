package edu.hi.prj.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import edu.hi.prj.mapper.UserMapper;
import edu.hi.prj.vo.UserDetailsVO;
import edu.hi.prj.vo.UserVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class CustomUserDetailsService implements UserDetailsService {

	@Autowired
	private UserMapper userMapper;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		
		log.warn("Load User By UserVO number: " + username);
		
		UserVO vo = userMapper.getUser(username);
		
		log.warn("queried by UserVO mapper: " + vo);
		
		
		return vo == null ? null : new UserDetailsVO(vo);
	}
}


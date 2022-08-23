package edu.hi.prj.config.oauth;

import java.util.Map;

public class NaverUserInfo implements OAuth2UserInfo {
	
	private Map<String, Object> attributes;//getAttributes
	
	public NaverUserInfo(Map<String, Object> attributes) {
		this.attributes = attributes;
	}
	
	@Override
	public String getProviderId() {
		
		return (String) attributes.get("id");
	}

	@Override
	public String getProbider() {
		return "naver";
	}

	@Override
	public String getMemail() {
		return (String) attributes.get("email");
	}

	@Override
	public String getMname() {
		return (String) attributes.get("name");
	}
	
}

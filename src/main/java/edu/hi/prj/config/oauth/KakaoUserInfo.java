package edu.hi.prj.config.oauth;

import java.util.Map;

public class KakaoUserInfo implements OAuth2UserInfo {
	
	private Map<String, Object> attributes;//getAttributes
	
	public KakaoUserInfo(Map<String, Object> attributes) {
		this.attributes = attributes;
	}
	
	@Override
	public String getProviderId() {
		
		return (String) attributes.get("email");
	}

	@Override
	public String getProbider() {
		return "kakao";
	}

	@Override
	public String getMemail() {
		return (String) attributes.get("email");
	}

	@Override
	public String getMname() {
		return (String) attributes.get("nickname");
	}
	
}

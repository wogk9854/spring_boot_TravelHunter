package edu.hi.prj.config.oauth;

import java.util.Map;

public class FacebookUserInfo implements OAuth2UserInfo {
	
	private Map<String, Object> attributes;//getAttributes
	
	public FacebookUserInfo(Map<String, Object> attributes) {
		this.attributes = attributes;
	}
	
	@Override
	public String getProviderId() {
		
		return (String) attributes.get("id");
	}

	@Override
	public String getProbider() {
		return "facebook";
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

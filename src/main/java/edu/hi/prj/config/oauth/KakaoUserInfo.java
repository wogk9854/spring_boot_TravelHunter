package edu.hi.prj.config.oauth;

import java.util.Map;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
@ToString
@Getter
@Setter
public class KakaoUserInfo implements OAuth2UserInfo {
	
	private Map<String, Object> attributes;//getAttributes
	private Map<String, Object> attributesAccount;
	private Map<String, Object> attributesProfile;

	 public KakaoUserInfo(Map<String, Object> attributes) {
	     this.attributes = attributes;
	     this.attributesAccount = (Map<String, Object>)attributes.get("kakao_account");
	     this.attributesProfile = (Map<String, Object>)attributes.get("properties");
	  }
	 
	 
	 
	
	@Override
	public String getProviderId() {
		
		return (String) attributes.get("id").toString();
	}

	@Override
	public String getProbider() {
		return "kakao";
	}

	@Override
	public String getMemail() {
		return (String) attributesAccount.get("email").toString();
	}

	@Override
	public String getMname() {
		return (String) attributesProfile.get("nickname").toString();
	}
	
}

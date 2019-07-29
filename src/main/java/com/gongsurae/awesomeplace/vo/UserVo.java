package com.gongsurae.awesomeplace.vo;

public class UserVo {
	private String id;
	private String password;
	private String phoneNum;
	private String email;
	private String memberType;
	private String nickname;
	private String image;
	public UserVo(String id, String password, String phoneNum, String email, String memberType, String nickname,
			String image) {
		super();
		this.id = id;
		this.password = password;
		this.phoneNum = phoneNum;
		this.email = email;
		this.memberType = memberType;
		this.nickname = nickname;
		this.image = image;
	}
	public UserVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPhoneNum() {
		return phoneNum;
	}
	public void setPhoneNum(String phoneNum) {
		this.phoneNum = phoneNum;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMemberType() {
		return memberType;
	}
	public void setMemberType(String memberType) {
		this.memberType = memberType;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	@Override
	public String toString() {
		return "UserVo [id=" + id + ", password=" + password + ", phoneNum=" + phoneNum + ", email=" + email
				+ ", memberType=" + memberType + ", nickname=" + nickname + ", image=" + image + "]";
	}
	
	//	
}

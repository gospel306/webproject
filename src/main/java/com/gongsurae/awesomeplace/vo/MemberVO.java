package com.gongsurae.awesomeplace.vo;

public class MemberVO {

	private String MEM_ID;
	private String MEM_PASS;
	private String MEM_NAME;
	private String MEM_MAIL;
	private String MEM_TYPE;
	private String MEM_COM;
	private String MEM_POS;
	private String MEM_IMG;
	
	public String getMEM_ID() {
		return MEM_ID;
	}

	public void setMEM_ID(String mEM_ID) {
		MEM_ID = mEM_ID;
	}

	public String getMEM_PASS() {
		return MEM_PASS;
	}

	public void setMEM_PASS(String mEM_PASS) {
		MEM_PASS = mEM_PASS;
	}

	public String getMEM_NAME() {
		return MEM_NAME;
	}

	public void setMEM_NAME(String mEM_NAME) {
		MEM_NAME = mEM_NAME;
	}

	public String getMEM_MAIL() {
		return MEM_MAIL;
	}

	public void setMEM_MAIL(String mEM_MAIL) {
		MEM_MAIL = mEM_MAIL;
	}

	public String getMEM_TYPE() {
		return MEM_TYPE;
	}

	public void setMEM_TYPE(String mEM_TYPE) {
		MEM_TYPE = mEM_TYPE;
	}

	public String getMEM_COM() {
		return MEM_COM;
	}

	public void setMEM_COM(String mEM_COM) {
		MEM_COM = mEM_COM;
	}

	public String getMEM_POS() {
		return MEM_POS;
	}

	public void setMEM_POS(String mEM_POS) {
		MEM_POS = mEM_POS;
	}
	
	
	public String getMEM_IMG() {
		return MEM_IMG;
	}

	public void setMEM_IMG(String mEM_IMG) {
		MEM_IMG = mEM_IMG;
	}

	@Override
	public String toString() {
		return "MemberVO [MEM_ID=" + MEM_ID + ", MEM_PASS=" + MEM_PASS + ", MEM_NAME=" + MEM_NAME + ", MEM_MAIL="
				+ MEM_MAIL + ", MEM_TYPE=" + MEM_TYPE + ", MEM_COM=" + MEM_COM + ", MEM_POS=" + MEM_POS + ", MEM_IMG="
				+ MEM_IMG + "]";
	}


}
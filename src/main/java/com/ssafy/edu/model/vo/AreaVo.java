package com.ssafy.edu.model.vo;

public class AreaVo {
	private String name;
	private int areaCode;
	public AreaVo(String name, int areaCode) {
		super();
		this.name = name;
		this.areaCode = areaCode;
	}
	public AreaVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAreaCode() {
		return areaCode;
	}
	public void setAreaCode(int areaCode) {
		this.areaCode = areaCode;
	}
	@Override
	public String toString() {
		return "AreaVo [name=" + name + ", areaCode=" + areaCode + "]";
	}
	
}

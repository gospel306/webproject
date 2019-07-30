package com.ssafy.edu.model.vo;

public class DetailTourPlace extends DetailVo{
	private String expAgeRange;
	private String expGuide;
	private String userTime;
	public DetailTourPlace(String expAgeRange, String expGuide, String userTime) {
		super();
		this.expAgeRange = expAgeRange;
		this.expGuide = expGuide;
		this.userTime = userTime;
	}
	public DetailTourPlace() {
		super();
		// TODO Auto-generated constructor stub
	}
	public DetailTourPlace(int contentId, String accomcount, String chkbabycarriage, String chkcreditcard,
			String chkpet, String parking, String infocenter, String restdate,String expAgeRange, String expGuide, String userTime) {
		super(contentId, accomcount, chkbabycarriage, chkcreditcard, chkpet, parking, infocenter, restdate);
		// TODO Auto-generated constructor stub
		this.expAgeRange = expAgeRange;
		this.expGuide = expGuide;
		this.userTime = userTime;
	}
	
}

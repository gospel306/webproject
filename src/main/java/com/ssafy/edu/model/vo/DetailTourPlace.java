package com.ssafy.edu.model.vo;

public class DetailTourPlace extends DetailVo{
	private String expAgeRange;
	private String expGuide;
<<<<<<< HEAD
	private String userTime;
	public DetailTourPlace(String expAgeRange, String expGuide, String userTime) {
		super();
		this.expAgeRange = expAgeRange;
		this.expGuide = expGuide;
		this.userTime = userTime;
=======
	private String useTime;
	public DetailTourPlace(String expAgeRange, String expGuide, String useTime) {
		super();
		this.expAgeRange = expAgeRange;
		this.expGuide = expGuide;
		this.useTime = useTime;
>>>>>>> 077bb2e... Revert "유창오| main.jsp 디자인 수정사항 반영"
	}
	public DetailTourPlace() {
		super();
		// TODO Auto-generated constructor stub
	}
	public DetailTourPlace(int contentId, String accomcount, String chkbabycarriage, String chkcreditcard,
<<<<<<< HEAD
			String chkpet, String parking, String infocenter, String restdate,String expAgeRange, String expGuide, String userTime) {
=======
			String chkpet, String parking, String infocenter, String restdate,String expAgeRange, String expGuide, String useTime) {
>>>>>>> 077bb2e... Revert "유창오| main.jsp 디자인 수정사항 반영"
		super(contentId, accomcount, chkbabycarriage, chkcreditcard, chkpet, parking, infocenter, restdate);
		// TODO Auto-generated constructor stub
		this.expAgeRange = expAgeRange;
		this.expGuide = expGuide;
<<<<<<< HEAD
		this.userTime = userTime;
=======
		this.useTime = useTime;
	}
	public String getExpAgeRange() {
		return expAgeRange;
	}
	public void setExpAgeRange(String expAgeRange) {
		this.expAgeRange = expAgeRange;
	}
	public String getExpGuide() {
		return expGuide;
	}
	public void setExpGuide(String expGuide) {
		this.expGuide = expGuide;
	}
	public String getUseTime() {
		return useTime;
	}
	public void setUseTime(String useTime) {
		this.useTime = useTime;
	}
	@Override
	public String toString() {
		return "DetailTourPlace [expAgeRange=" + expAgeRange + ", expGuide=" + expGuide + ", useTime=" + useTime
				+ ", getContentId()=" + getContentId() + ", getAccomcount()=" + getAccomcount()
				+ ", getChkbabycarriage()=" + getChkbabycarriage() + ", getChkcreditcard()=" + getChkcreditcard()
				+ ", getChkpet()=" + getChkpet() + ", getParking()=" + getParking() + ", getInfocenter()="
				+ getInfocenter() + ", getRestdate()=" + getRestdate() + ", toString()=" + super.toString()
				+ ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + "]";
>>>>>>> 077bb2e... Revert "유창오| main.jsp 디자인 수정사항 반영"
	}
	
}

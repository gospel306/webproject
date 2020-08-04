<<<<<<< HEAD
package com.ssafy.edu.model.vo;

public class DetailCourse extends DetailVo{
	private String distance;
	private String takeTime;
	public DetailCourse(String distance, String takeTime) {
		super();
		this.distance = distance;
		this.takeTime = takeTime;
	}
	public DetailCourse() {
		super();
		// TODO Auto-generated constructor stub
	}
	public DetailCourse(int contentId, String accomcount, String chkbabycarriage, String chkcreditcard, String chkpet,
			String parking, String infocenter, String restdate,String distance, String takeTime) {
		super(contentId, accomcount, chkbabycarriage, chkcreditcard, chkpet, parking, infocenter, restdate);
		// TODO Auto-generated constructor stub
		this.distance = distance;
		this.takeTime = takeTime;
	}
	public String getDistance() {
		return distance;
	}
	public void setDistance(String distance) {
		this.distance = distance;
	}
	public String getTakeTime() {
		return takeTime;
	}
	public void setTakeTime(String takeTime) {
		this.takeTime = takeTime;
	}
	@Override
	public String toString() {
<<<<<<< HEAD
		return "DetailCourse [distance=" + distance + ", takeTime=" + takeTime + "]";
=======
		return "DetailCourse [distance=" + distance + ", takeTime=" + takeTime + ", getContentId()=" + getContentId()
				+ ", getAccomcount()=" + getAccomcount() + ", getChkbabycarriage()=" + getChkbabycarriage()
				+ ", getChkcreditcard()=" + getChkcreditcard() + ", getChkpet()=" + getChkpet() + ", getParking()="
				+ getParking() + ", getInfocenter()=" + getInfocenter() + ", getRestdate()=" + getRestdate()
				+ ", toString()=" + super.toString() + ", getClass()=" + getClass() + ", hashCode()=" + hashCode()
				+ "]";
>>>>>>> 077bb2e... Revert "유창오| main.jsp 디자인 수정사항 반영"
	}
	
}
=======
package com.ssafy.edu.model.vo;

public class DetailCourse extends DetailVo{
	private String distance;
	private String takeTime;
	public DetailCourse(String distance, String takeTime) {
		super();
		this.distance = distance;
		this.takeTime = takeTime;
	}
	public DetailCourse() {
		super();
		// TODO Auto-generated constructor stub
	}
	public DetailCourse(int contentId, String accomcount, String chkbabycarriage, String chkcreditcard, String chkpet,
			String parking, String infocenter, String restdate,String distance, String takeTime) {
		super(contentId, accomcount, chkbabycarriage, chkcreditcard, chkpet, parking, infocenter, restdate);
		// TODO Auto-generated constructor stub
		this.distance = distance;
		this.takeTime = takeTime;
	}
	public String getDistance() {
		return distance;
	}
	public void setDistance(String distance) {
		this.distance = distance;
	}
	public String getTakeTime() {
		return takeTime;
	}
	public void setTakeTime(String takeTime) {
		this.takeTime = takeTime;
	}
	@Override
	public String toString() {
		return "DetailCourse [distance=" + distance + ", takeTime=" + takeTime + ", getContentId()=" + getContentId()
				+ ", getAccomcount()=" + getAccomcount() + ", getChkbabycarriage()=" + getChkbabycarriage()
				+ ", getChkcreditcard()=" + getChkcreditcard() + ", getChkpet()=" + getChkpet() + ", getParking()="
				+ getParking() + ", getInfocenter()=" + getInfocenter() + ", getRestdate()=" + getRestdate()
				+ ", toString()=" + super.toString() + ", getClass()=" + getClass() + ", hashCode()=" + hashCode()
				+ "]";
	}
	
}
>>>>>>> c465ac6... Revert "Revert "유창오| main.jsp 디자인 수정사항 반영""

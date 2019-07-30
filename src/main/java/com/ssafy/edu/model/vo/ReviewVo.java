package com.ssafy.edu.model.vo;

public class ReviewVo {
	private int num;
	private String title;
	private String content;
	private String time_Stamp;
	public ReviewVo(int num, String title, String content, String time_Stamp) {
		super();
		this.num = num;
		this.title = title;
		this.content = content;
		this.time_Stamp = time_Stamp;
	}
	public ReviewVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getTime_Stamp() {
		return time_Stamp;
	}
	public void setTime_Stamp(String time_Stamp) {
		this.time_Stamp = time_Stamp;
	}
	@Override
	public String toString() {
		return "ReviewVo [num=" + num + ", title=" + title + ", content=" + content + ", time_Stamp=" + time_Stamp
				+ "]";
	}
	
}

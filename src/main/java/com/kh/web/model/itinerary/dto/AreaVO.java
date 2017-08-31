package com.kh.web.model.itinerary.dto;

public class AreaVO {
	private String areaCode;
	private String areaName;
	private String areaImage;
	
	public AreaVO(String areaCode, String areaName, String areaImage) {
		super();
		this.areaCode = areaCode;
		this.areaName = areaName;
		this.areaImage = areaImage;
	}
	public AreaVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getAreaCode() {
		return areaCode;
	}
	public void setAreaCode(String areaCode) {
		this.areaCode = areaCode;
	}
	public String getAreaName() {
		return areaName;
	}
	public void setAreaName(String areaName) {
		this.areaName = areaName;
	}
	public String getAreaImage() {
		return areaImage;
	}
	public void setAreaImage(String areaImage) {
		this.areaImage = areaImage;
	}
	@Override
	public String toString() {
		return "AreaVO [areaCode=" + areaCode + ", areaName=" + areaName + ", areaImage=" + areaImage + "]";
	}
	
	
	
	
}

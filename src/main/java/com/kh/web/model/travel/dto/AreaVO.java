package com.kh.web.model.travel.dto;

public class AreaVO {

	private String areaCode;
	private String areaName;
	private String areaMapX;
	private String areaMapY;

	public AreaVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public AreaVO(String areaCode, String areaName, String areaMapX, String areaMapY) {
		super();
		this.areaCode = areaCode;
		this.areaName = areaName;
		this.areaMapX = areaMapX;
		this.areaMapY = areaMapY;
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

	public String getAreaMapX() {
		return areaMapX;
	}

	public void setAreaMapX(String areaMapX) {
		this.areaMapX = areaMapX;
	}

	public String getAreaMapY() {
		return areaMapY;
	}

	public void setAreaMapY(String areaMapY) {
		this.areaMapY = areaMapY;
	}

	@Override
	public String toString() {
		return "AreaVO [areaCode=" + areaCode + ", areaName=" + areaName + ", areaMapX=" + areaMapX + ", areaMapY="
				+ areaMapY + "]";
	}

}

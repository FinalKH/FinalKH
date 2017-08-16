package com.kh.web.model.travel.dto;

public class SiGunGuVO {

	private String siGunGuSerialNum;
	private String areaCode;
	private String siGunGuCode;
	private String siGunGuName;
	private String siGunGuMapX;
	private String siGunGuMapY;

	public SiGunGuVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public SiGunGuVO(String siGunGuSerialNum, String areaCode, String siGunGuCode, String siGunGuName,
			String siGunGuMapX, String siGunGuMapY) {
		super();
		this.siGunGuSerialNum = siGunGuSerialNum;
		this.areaCode = areaCode;
		this.siGunGuCode = siGunGuCode;
		this.siGunGuName = siGunGuName;
		this.siGunGuMapX = siGunGuMapX;
		this.siGunGuMapY = siGunGuMapY;
	}

	public String getSiGunGuSerialNum() {
		return siGunGuSerialNum;
	}

	public void setSiGunGuSerialNum(String siGunGuSerialNum) {
		this.siGunGuSerialNum = siGunGuSerialNum;
	}

	public String getAreaCode() {
		return areaCode;
	}

	public void setAreaCode(String areaCode) {
		this.areaCode = areaCode;
	}

	public String getSiGunGuCode() {
		return siGunGuCode;
	}

	public void setSiGunGuCode(String siGunGuCode) {
		this.siGunGuCode = siGunGuCode;
	}

	public String getSiGunGuName() {
		return siGunGuName;
	}

	public void setSiGunGuName(String siGunGuName) {
		this.siGunGuName = siGunGuName;
	}

	public String getSiGunGuMapX() {
		return siGunGuMapX;
	}

	public void setSiGunGuMapX(String siGunGuMapX) {
		this.siGunGuMapX = siGunGuMapX;
	}

	public String getSiGunGuMapY() {
		return siGunGuMapY;
	}

	public void setSiGunGuMapY(String siGunGuMapY) {
		this.siGunGuMapY = siGunGuMapY;
	}

	@Override
	public String toString() {
		return "SiGunGuVO [siGunGuSerialNum=" + siGunGuSerialNum + ", areaCode=" + areaCode + ", siGunGuCode="
				+ siGunGuCode + ", siGunGuName=" + siGunGuName + ", siGunGuMapX=" + siGunGuMapX + ", siGunGuMapY="
				+ siGunGuMapY + "]";
	}
}

package com.kh.web.model.travel.dto;

public class PlanDetailVO {

	private String planDetailNum;
	private String planRoughNum;
	private String contentId;
	private String startTime;
	private String endTime;

	public PlanDetailVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public PlanDetailVO(String planDetailNum, String planRoughNum, String contentId, String startTime, String endTime) {
		super();
		this.planDetailNum = planDetailNum;
		this.planRoughNum = planRoughNum;
		this.contentId = contentId;
		this.startTime = startTime;
		this.endTime = endTime;
	}

	public String getPlanDetailNum() {
		return planDetailNum;
	}

	public void setPlanDetailNum(String planDetailNum) {
		this.planDetailNum = planDetailNum;
	}

	public String getPlanRoughNum() {
		return planRoughNum;
	}

	public void setPlanRoughNum(String planRoughNum) {
		this.planRoughNum = planRoughNum;
	}

	public String getContentId() {
		return contentId;
	}

	public void setContentId(String contentId) {
		this.contentId = contentId;
	}

	public String getStartTime() {
		return startTime;
	}

	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}

	public String getEndTime() {
		return endTime;
	}

	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}

	@Override
	public String toString() {
		return "PlanDetailVO [planDetailNum=" + planDetailNum + ", planRoughNum=" + planRoughNum + ", contentId="
				+ contentId + ", startTime=" + startTime + ", endTime=" + endTime + "]";
	}

}

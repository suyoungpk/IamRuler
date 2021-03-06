package com.imruler.web.entity;

public class Dibs {
	int dibsId;
	int memberId;
	String memo;
    int coordiId;   
    
    public Dibs(int dibsId,String memo) { // 메모 수정
    	this.memo = memo;
		this.dibsId = dibsId;
	}
    public Dibs(int dibsId,int memberId,  int coordiId) { // 메모 없이
		this.memberId = memberId;
		this.coordiId = coordiId;
		this.dibsId = dibsId;
	}
    public Dibs(String memo,int memberId,  int coordiId) { // 등록용
		this.memberId = memberId;
		this.coordiId = coordiId;
		this.memo = memo;
	}
	public Dibs(int dibsId,int memberId, String memo, int coordiId) {
		this.memberId = memberId;
		this.memo = memo;
		this.coordiId = coordiId;
		this.dibsId = dibsId;
	}
	public int getMemberId() {
		return memberId;
	}
	public void setMemberId(int memberId) {
		this.memberId = memberId;
	}
	public String getMemo() {
		return memo;
	}
	public void setMemo(String memo) {
		this.memo = memo;
	}
	public int getCoordiId() {
		return coordiId;
	}
	public void setCoordiId(int coordiId) {
		this.coordiId = coordiId;
	}
	public int getDibsId() {
		return dibsId;
	}
	public void setDibsId(int dibsId) {
		this.dibsId = dibsId;
	}
	@Override
	public String toString() {
		return "Dibs [dibsId=" + dibsId + ", memberId=" + memberId + ", memo=" + memo + ", coordiId=" + coordiId + "]";
	}
	
}

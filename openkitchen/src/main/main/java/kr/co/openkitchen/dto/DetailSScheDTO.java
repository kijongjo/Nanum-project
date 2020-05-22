package kr.co.openkitchen.dto;

import java.sql.Date;

import lombok.ToString;

import lombok.AllArgsConstructor;

import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@ToString
public class DetailSScheDTO {
	int lNo;
	public Date lLeasedate;
	String lLeasetime;
	String lPerstatus;
	
	// getter, setter
	public int getlNo() {
		return lNo;
	}
	public void setlNo(int lNo) {
		this.lNo = lNo;
	}
	public Date getlLeasedate() {
		return lLeasedate;
	}
	public void setlLeasedate(Date lLeasedate) {
		this.lLeasedate = lLeasedate;
	}
	public String getlLeasetime() {
		return lLeasetime;
	}
	public void setlLeasetime(String lLeasetime) {
		this.lLeasetime = lLeasetime;
	}
	public String getlPerstatus() {
		return lPerstatus;
	}
	public void setlPerstatus(String lPerstatus) {
		this.lPerstatus = lPerstatus;
	}	
}

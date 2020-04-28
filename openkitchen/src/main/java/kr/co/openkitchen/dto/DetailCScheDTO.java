package kr.co.openkitchen.dto;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@ToString
public class DetailCScheDTO {
	int cNo;
	int recNo;
	Date lLeasedate;
	String lLeasetime;
	String lPerstatus;
	int cPerson;
	String cMaxrecruitperson;
	
	// getter, setter
	public int getcNo() {
		return cNo;
	}
	public void setcNo(int cNo) {
		this.cNo = cNo;
	}
	public int getRecNo() {
		return recNo;
	}
	public void setRecNo(int recNo) {
		this.recNo = recNo;
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
	public int getcPerson() {
		return cPerson;
	}
	public void setcPerson(int cPerson) {
		this.cPerson = cPerson;
	}
	public String getcMaxrecruitperson() {
		return cMaxrecruitperson;
	}
	public void setcMaxrecruitperson(String cMaxrecruitperson) {
		this.cMaxrecruitperson = cMaxrecruitperson;
	}
	
	
	
	
}

package kr.co.openkitchen.dto;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import lombok.ToString;

@AllArgsConstructor
@NoArgsConstructor
@ToString
public class PaymentSpaceDTO {
	int lNo;
	String sName;
	String sDetailsumnail;
	int sCapacity;
	Date lLeasedate;
	String lLeasetime;
	String sLoc;
	String mName;
	
	// getter, setter
	public int getlNo() {
		return lNo;
	}
	public void setlNo(int lNo) {
		this.lNo = lNo;
	}
	public String getsName() {
		return sName;
	}
	public void setsName(String sName) {
		this.sName = sName;
	}
	public String getsDetailsumnail() {
		return sDetailsumnail;
	}
	public void setsDetailsumnail(String sDetailsumnail) {
		this.sDetailsumnail = sDetailsumnail;
	}
	public int getsCapacity() {
		return sCapacity;
	}
	public void setsCapacity(int sCapacity) {
		this.sCapacity = sCapacity;
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
	public String getsLoc() {
		return sLoc;
	}
	public void setsLoc(String sLoc) {
		this.sLoc = sLoc;
	}
	public String getmName() {
		return mName;
	}
	public void setmName(String mName) {
		this.mName = mName;
	}
	
	
	
	
	
	
}

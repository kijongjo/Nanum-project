package kr.co.openkitchen.dto;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@ToString
public class PaymentClassDTO {
	String cName;
	int cPrice;
	String cDetailsumnail;
	Date lLeasedate;
	String lLeasetime;
	String tHavenickname;
	String tExpertname;
	String sLoc;
	
	// getter, setter
	public String getcName() {
		return cName;
	}
	public void setcName(String cName) {
		this.cName = cName;
	}
	public int getcPrice() {
		return cPrice;
	}
	public void setcPrice(int cPrice) {
		this.cPrice = cPrice;
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
	public String gettHavenickname() {
		return tHavenickname;
	}
	public void settHavenickname(String tHavenickname) {
		this.tHavenickname = tHavenickname;
	}
	public String gettExpertname() {
		return tExpertname;
	}
	public void settExpertname(String tExpertname) {
		this.tExpertname = tExpertname;
	}
	public String getsLoc() {
		return sLoc;
	}
	public void setsLoc(String sLoc) {
		this.sLoc = sLoc;
	}
	public String getcDetailsumnail() {
		return cDetailsumnail;
	}
	public void setcDetailsumnail(String cDetailsumnail) {
		this.cDetailsumnail = cDetailsumnail;
	}
	
	
	
	
}

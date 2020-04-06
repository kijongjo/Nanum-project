package kr.co.openkitchen.dto;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@ToString
public class DetailClassDTO {
	String cDetailsumnail;
	String cName;
	String cShortintro;
	String cHashTag;
	int cPrice;
	int cMinrecruitperson;
	int cMaxrecruitperson;
	String cLongintro;
	String cReference;
	String tHavenickname;
	String tExpert;
	String tExpertname;
	String lLeasedate;
	String lLeasetime;
	String lPerstatus;
	int sNo;
	String sLoc;
	String sType;
	
	// setter, getter
	public String getcDetailsumnail() {
		return cDetailsumnail;
	}
	public void setcDetailsumnail(String cDetailsumnail) {
		this.cDetailsumnail = cDetailsumnail;
	}
	public String getcName() {
		return cName;
	}
	public void setcName(String cName) {
		this.cName = cName;
	}
	public String getcShortintro() {
		return cShortintro;
	}
	public void setcShortintro(String cShortintro) {
		this.cShortintro = cShortintro;
	}
	public String getcHashTag() {
		return cHashTag;
	}
	public void setcHashTag(String cHashTag) {
		this.cHashTag = cHashTag;
	}
	public int getcPrice() {
		return cPrice;
	}
	public void setcPrice(int cPrice) {
		this.cPrice = cPrice;
	}
	public int getcMinrecruitperson() {
		return cMinrecruitperson;
	}
	public void setcMinrecruitperson(int cMinrecruitperson) {
		this.cMinrecruitperson = cMinrecruitperson;
	}
	public int getcMaxrecruitperson() {
		return cMaxrecruitperson;
	}
	public void setcMaxrecruitperson(int cMaxrecruitperson) {
		this.cMaxrecruitperson = cMaxrecruitperson;
	}
	public String getcLongintro() {
		return cLongintro;
	}
	public void setcLongintro(String cLongintro) {
		this.cLongintro = cLongintro;
	}
	public String getcReference() {
		return cReference;
	}
	public void setcReference(String cReference) {
		this.cReference = cReference;
	}
	public String gettHavenickname() {
		return tHavenickname;
	}
	public void settHavenickname(String tHavenickname) {
		this.tHavenickname = tHavenickname;
	}
	public String gettExpert() {
		return tExpert;
	}
	public void settExpert(String tExpert) {
		this.tExpert = tExpert;
	}
	public String gettExpertname() {
		return tExpertname;
	}
	public void settExpertname(String tExpertname) {
		this.tExpertname = tExpertname;
	}
	public String getlLeasedate() {
		return lLeasedate;
	}
	public void setlLeasedate(String lLeasedate) {
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
	public int getsNo() {
		return sNo;
	}
	public void setsNo(int sNo) {
		this.sNo = sNo;
	}
	public String getsLoc() {
		return sLoc;
	}
	public void setsLoc(String sLoc) {
		this.sLoc = sLoc;
	}
	public String getsType() {
		return sType;
	}
	public void setsType(String sType) {
		this.sType = sType;
	}
	
	
	

}

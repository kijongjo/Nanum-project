package kr.co.openkitchen.dto;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@ToString
public class DetailClassDTO {
	int cNo;
	String cDetailsumnail;
	String cName;
	String cShortintro;
	String cHashtag;
	int cPrice;
	int cMinrecruitperson;
	int cMaxrecruitperson;
	String cLongintro;
	String cReference;
	int tNo;
	String tHavenickname;
	String tExpert;
	String tExpertname;
	int sNo;
	String sLoc;
	String sType;
	String sMainsumnail;
	String mMainsumnail;
	
	
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
	public String getcHashtag() {
		return cHashtag;
	}
	public void setcHashtag(String cHashtag) {
		this.cHashtag = cHashtag;
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
	
	public String getsMainsumnail() {
		return sMainsumnail;
	}
	public void setsMainsumnail(String sMainsumnail) {
		this.sMainsumnail = sMainsumnail;
	}
	public String getmMainsumnail() {
		return mMainsumnail;
	}
	public void setmMainsumnail(String mMainsumnail) {
		this.mMainsumnail = mMainsumnail;
	}
	public int gettNo() {
		return tNo;
	}
	public void settNo(int tNo) {
		this.tNo = tNo;
	}
	public int getcNo() {
		return cNo;
	}
	public void setcNo(int cNo) {
		this.cNo = cNo;
	}
	
}

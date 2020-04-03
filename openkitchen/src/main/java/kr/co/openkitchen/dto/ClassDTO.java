package kr.co.openkitchen.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;


@NoArgsConstructor
@AllArgsConstructor
@ToString
public class ClassDTO {
	int cNo;
	String cName;
	String cShortintro;
	String cMainsumnail;
	String cDetailsumnail;
	String cLongintro;
	String cReference;
	int cPrice;
	String cPerstatus;
	String cType;
	String cHashtag;
	String cRegdate;
	int cMinrecruitperson;
	int cMaxrecruitperson;
	int tNo;
	
	// getter, setter
	public int getcNo() {
		return cNo;
	}
	public void setcNo(int cNo) {
		this.cNo = cNo;
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
	public String getcMainsumnail() {
		return cMainsumnail;
	}
	public void setcMainsumnail(String cMainsumnail) {
		this.cMainsumnail = cMainsumnail;
	}
	public String getcDetailsumnail() {
		return cDetailsumnail;
	}
	public void setcDetailsumnail(String cDetailsumnail) {
		this.cDetailsumnail = cDetailsumnail;
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
	public int getcPrice() {
		return cPrice;
	}
	public void setcPrice(int cPrice) {
		this.cPrice = cPrice;
	}
	public String getcPerstatus() {
		return cPerstatus;
	}
	public void setcPerstatus(String cPerstatus) {
		this.cPerstatus = cPerstatus;
	}
	public String getcType() {
		return cType;
	}
	public void setcType(String cType) {
		this.cType = cType;
	}
	public String getcHashtag() {
		return cHashtag;
	}
	public void setcHashtag(String cHashtag) {
		this.cHashtag = cHashtag;
	}
	public String getcRegdate() {
		return cRegdate;
	}
	public void setcRegdate(String cRegdate) {
		this.cRegdate = cRegdate;
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
	public int gettNo() {
		return tNo;
	}
	public void settNo(int tNo) {
		this.tNo = tNo;
	}
}

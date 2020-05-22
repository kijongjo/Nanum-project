package kr.co.openkitchen.dto;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@ToString
public class ClassRegistDTO {
	private int cNo;
	private String cName ;
	private String cShortintro;
	private String cMainsumnail;
	private String cDetailsumnail;
	private String cLongintro;
	private String cReference;
	private int cPrice;
	private String cPerstatus;
	private String cType;
	private String cHashtag;
	private String cRegdate;
	private int cMinrecruitperson;
	private int cMaxrecruitperson;
	private int tNo;
	private String cTema;
	
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
	public String getcTema() {
		return cTema;
	}
	public void setcTema(String cTema) {
		this.cTema = cTema;
	}
	
}

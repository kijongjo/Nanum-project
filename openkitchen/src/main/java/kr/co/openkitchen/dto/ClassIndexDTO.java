package kr.co.openkitchen.dto;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@ToString
public class ClassIndexDTO {
	int cNo;
	String cName;
	String cShortIntro;
	String cMainsumnail;
	String cTema;
	int cPrice;
	String tArea;
	String tExpert;
	
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
	public String getcShortIntro() {
		return cShortIntro;
	}
	public void setcShortIntro(String cShortIntro) {
		this.cShortIntro = cShortIntro;
	}
	public String getcMainsumnail() {
		return cMainsumnail;
	}
	public void setcMainsumnail(String cMainsumnail) {
		this.cMainsumnail = cMainsumnail;
	}
	public String getcTema() {
		return cTema;
	}
	public void setcTema(String cTema) {
		this.cTema = cTema;
	}
	public int getcPrice() {
		return cPrice;
	}
	public void setcPrice(int cPrice) {
		this.cPrice = cPrice;
	}
	public String gettArea() {
		return tArea;
	}
	public void settArea(String tArea) {
		this.tArea = tArea;
	}
	public String gettExpert() {
		return tExpert;
	}
	public void settExpert(String tExpert) {
		this.tExpert = tExpert;
	}
	
	
}

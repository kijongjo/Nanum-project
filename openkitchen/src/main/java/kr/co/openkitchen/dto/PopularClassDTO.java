package kr.co.openkitchen.dto;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@ToString
public class PopularClassDTO {
	int cNo;
	String cName;
	String cMainsumnail;
	String cShortintro;
	String cTema;
	int cPrice;
	String tArea;
	String tExpert;
	
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
	public String getcMainsumnail() {
		return cMainsumnail;
	}
	public void setcMainsumnail(String cMainsumnail) {
		this.cMainsumnail = cMainsumnail;
	}
	public String getcShortintro() {
		return cShortintro;
	}
	public void setcShortintro(String cShortintro) {
		this.cShortintro = cShortintro;
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
	public String getcTema() {
		return cTema;
	}
	public void setcTema(String cTema) {
		this.cTema = cTema;
	}

}

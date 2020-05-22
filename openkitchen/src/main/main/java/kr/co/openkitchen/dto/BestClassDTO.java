package kr.co.openkitchen.dto;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@ToString
public class BestClassDTO {
	int cNo;
	String cName;
	String cMainsumnail;
	String cShortintro;
	String cTema;
	String cPrice;
	String tArea;
	String tExpert;
	String recPerstatus;
	int cnt;
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
	public String getcTema() {
		return cTema;
	}
	public void setcTema(String cTema) {
		this.cTema = cTema;
	}
	public String getcPrice() {
		return cPrice;
	}
	public void setcPrice(String cPrice) {
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
	public String getRecPerstatus() {
		return recPerstatus;
	}
	public void setRecPerstatus(String recPerstatus) {
		this.recPerstatus = recPerstatus;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
}

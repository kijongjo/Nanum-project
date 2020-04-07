package kr.co.openkitchen.dto;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@ToString
public class SpaceIndexDTO {
	String sMainSumnail;
	String sShortIntro;
	String sName;
	String sTema;
	String sLoc;
	String sRegdate;
	
	
	public String getsRegdate() {
		return sRegdate;
	}
	public void setsRegdate(String sRegdate) {
		this.sRegdate = sRegdate;
	}
	public String getsMainSumnail() {
		return sMainSumnail;
	}
	public void setsMainSumnail(String sMainSumnail) {
		this.sMainSumnail = sMainSumnail;
	}
	public String getsShortIntro() {
		return sShortIntro;
	}
	public void setsShortIntro(String sShortIntro) {
		this.sShortIntro = sShortIntro;
	}
	public String getsName() {
		return sName;
	}
	public void setsName(String sName) {
		this.sName = sName;
	}
	public String getsTema() {
		return sTema;
	}
	public void setsTema(String sTema) {
		this.sTema = sTema;
	}
	public String getsLoc() {
		return sLoc;
	}
	public void setsLoc(String sLoc) {
		this.sLoc = sLoc;
	}
}

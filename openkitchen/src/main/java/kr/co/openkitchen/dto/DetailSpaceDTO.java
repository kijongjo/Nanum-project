package kr.co.openkitchen.dto;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@ToString
public class DetailSpaceDTO {
	String sDetailsumnail;
	String sName;
	String sShortintro;
	String sHashtag;
	String sTema;
	String sLoc;
	int sCapacity;
	String sLongintro;
	String sReference;
	String sConvenient;
	String sSafety;
	
	//getter, setter
	public String getsDetailsumnail() {
		return sDetailsumnail;
	}
	public void setsDetailsumnail(String sDetailsumnail) {
		this.sDetailsumnail = sDetailsumnail;
	}
	public String getsName() {
		return sName;
	}
	public void setsName(String sName) {
		this.sName = sName;
	}
	public String getsShortintro() {
		return sShortintro;
	}
	public void setsShortintro(String sShortintro) {
		this.sShortintro = sShortintro;
	}
	public String getsHashtag() {
		return sHashtag;
	}
	public void setsHashtag(String sHashtag) {
		this.sHashtag = sHashtag;
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
	public int getsCapacity() {
		return sCapacity;
	}
	public void setsCapacity(int sCapacity) {
		this.sCapacity = sCapacity;
	}
	public String getsLongintro() {
		return sLongintro;
	}
	public void setsLongintro(String sLongintro) {
		this.sLongintro = sLongintro;
	}
	public String getsReference() {
		return sReference;
	}
	public void setsReference(String sReference) {
		this.sReference = sReference;
	}
	public String getsConvenient() {
		return sConvenient;
	}
	public void setsConvenient(String sConvenient) {
		this.sConvenient = sConvenient;
	}
	public String getsSafety() {
		return sSafety;
	}
	public void setsSafety(String sSafety) {
		this.sSafety = sSafety;
	}
	
	
	

}

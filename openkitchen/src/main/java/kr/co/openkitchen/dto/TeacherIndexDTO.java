package kr.co.openkitchen.dto;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@ToString
public class TeacherIndexDTO {
	int tNo;	
	String tMainSumnail;
	String tDetailSumnail;
	String tHaveNickName;
	String tExpertName;
	String tCareer;
	String tShortIntro;
	String tArea;
	String tLongIntro;
	String tRegdate;
	String tExpert;
	String tPerstatus;
	String cTema;
	
	public int gettNo() {
		return tNo;
	}
	public void settNo(int tNo) {
		this.tNo = tNo;
	}
	public String gettMainSumnail() {
		return tMainSumnail;
	}
	public void settMainSumnail(String tMainSumnail) {
		this.tMainSumnail = tMainSumnail;
	}
	public String gettDetailSumnail() {
		return tDetailSumnail;
	}
	public void settDetailSumnail(String tDetailSumnail) {
		this.tDetailSumnail = tDetailSumnail;
	}
	public String gettHaveNickName() {
		return tHaveNickName;
	}
	public void settHaveNickName(String tHaveNickName) {
		this.tHaveNickName = tHaveNickName;
	}
	public String gettExpertName() {
		return tExpertName;
	}
	public void settExpertName(String tExpertName) {
		this.tExpertName = tExpertName;
	}
	public String gettCareer() {
		return tCareer;
	}
	public void settCareer(String tCareer) {
		this.tCareer = tCareer;
	}
	public String gettShortIntro() {
		return tShortIntro;
	}
	public void settShortIntro(String tShortIntro) {
		this.tShortIntro = tShortIntro;
	}
	public String gettArea() {
		return tArea;
	}
	public void settArea(String tArea) {
		this.tArea = tArea;
	}
	public String gettLongIntro() {
		return tLongIntro;
	}
	public void settLongIntro(String tLongIntro) {
		this.tLongIntro = tLongIntro;
	}
	public String gettRegdate() {
		return tRegdate;
	}
	public void settRegdate(String tRegdate) {
		this.tRegdate = tRegdate;
	}
	public String gettExpert() {
		return tExpert;
	}
	public void settExpert(String tExpert) {
		this.tExpert = tExpert;
	}
	public String gettPerstatus() {
		return tPerstatus;
	}
	public void settPerstatus(String tPerstatus) {
		this.tPerstatus = tPerstatus;
	}
	public String getcTema() {
		return cTema;
	}
	public void setcTema(String cTema) {
		this.cTema = cTema;
	}
	
	
}

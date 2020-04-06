package kr.co.openkitchen.dto;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@ToString
public class TeacherDTO {
	private int tNo;
	private String tMainsumnail;
	private String tDetailsumnail;
	private String thavenickname;
	private String tExpertname;
	private String tCareer;
	private String tshortIntro;
	private String tArea;
	private String tLongintro;
	private String tRegdate;
	private String tExpert;
	private String tPerstatus;

	public int gettNo() {
		return tNo;
	}

	public void settNo(int tNo) {
		this.tNo = tNo;
	}

	public String gettMainsumnail() {
		return tMainsumnail;
	}

	public void settMainsumnail(String tMainsumnail) {
		this.tMainsumnail = tMainsumnail;
	}

	public String gettDetailsumnail() {
		return tDetailsumnail;
	}

	public void settDetailsumnail(String tDetailsumnail) {
		this.tDetailsumnail = tDetailsumnail;
	}

	public String getThavenickname() {
		return thavenickname;
	}

	public void setThavenickname(String thavenickname) {
		this.thavenickname = thavenickname;
	}

	public String gettExpertname() {
		return tExpertname;
	}

	public void settExpertname(String tExpertname) {
		this.tExpertname = tExpertname;
	}

	public String gettCareer() {
		return tCareer;
	}

	public void settCareer(String tCareer) {
		this.tCareer = tCareer;
	}

	public String getTshortIntro() {
		return tshortIntro;
	}

	public void setTshortIntro(String tshortIntro) {
		this.tshortIntro = tshortIntro;
	}

	public String gettArea() {
		return tArea;
	}

	public void settArea(String tArea) {
		this.tArea = tArea;
	}

	public String gettLongintro() {
		return tLongintro;
	}

	public void settLongintro(String tLongintro) {
		this.tLongintro = tLongintro;
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

}

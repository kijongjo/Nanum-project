package kr.co.openkitchen.dto;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@ToString
public class TeacherRegistDTO {
	private int tNo;
	private String tMainsumnail;
	private String tDetailsumnail;
	private String tHavenickname;
	private String tExpertname;
	private String tCareer;
	private String tshortIntro;
	private String tArea;
	private String tLongintro;
	private String tRegdate;
	private String tExpert;
	private String tPerstatus;
	private String proNo;
	private int proType;
	private String proCeo;
	private String proBank;
	private String proAccount;
	private String proName;
	private String proAccounting;
	private String proRegimg;
	private int mNo;
	

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

	public String gettHavenickname() {
		return tHavenickname;
	}

	public void settHavenickname(String thavenickname) {
		this.tHavenickname = thavenickname;
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

	public String getProNo() {
		return proNo;
	}

	public void setProNo(String proNo) {
		this.proNo = proNo;
	}

	public int getProType() {
		return proType;
	}

	public void setProType(int proType) {
		this.proType = proType;
	}

	public String getProCeo() {
		return proCeo;
	}

	public void setProCeo(String proCeo) {
		this.proCeo = proCeo;
	}

	public String getProBank() {
		return proBank;
	}

	public void setProBank(String proBank) {
		this.proBank = proBank;
	}

	public String getProAccount() {
		return proAccount;
	}

	public void setProAccount(String proAccount) {
		this.proAccount = proAccount;
	}

	public String getProName() {
		return proName;
	}

	public void setProName(String proName) {
		this.proName = proName;
	}

	public String getProAccounting() {
		return proAccounting;
	}

	public void setProAccounting(String proAccounting) {
		this.proAccounting = proAccounting;
	}

	public String getProRegimg() {
		return proRegimg;
	}

	public void setProRegimg(String proRegimg) {
		this.proRegimg = proRegimg;
	}

	public int getmNo() {
		return mNo;
	}

	public void setmNo(int mNo) {
		this.mNo = mNo;
	}

}

package kr.co.openkitchen.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;


@NoArgsConstructor
@AllArgsConstructor
@ToString
public class MemberDTO {
	int mNo;
	String mEmail;
	String mPwd;
	String mName;
	String mPhone;
	int mBirth;
	int mGender;
	String mMainSumnail;
	String mRegdata;
	String mGrade;
	int enabled;
	
	public int getmNo() {
		return mNo;
	}
	public void setmNo(int mNo) {
		this.mNo = mNo;
	}
	public String getmEmail() {
		return mEmail;
	}
	public void setmEmail(String mEmail) {
		this.mEmail = mEmail;
	}
	public String getmPwd() {
		return mPwd;
	}
	public void setmPwd(String mPwd) {
		this.mPwd = mPwd;
	}
	public String getmName() {
		return mName;
	}
	public void setmName(String mName) {
		this.mName = mName;
	}
	public String getmPhone() {
		return mPhone;
	}
	public void setmPhone(String mPhone) {
		this.mPhone = mPhone;
	}
	public int getmBirth() {
		return mBirth;
	}
	public void setmBirth(int mBirth) {
		this.mBirth = mBirth;
	}
	public int getmGender() {
		return mGender;
	}
	public void setmGender(int mGender) {
		this.mGender = mGender;
	}
	public String getmMainSumnail() {
		return mMainSumnail;
	}
	public void setmMainSumnail(String mMainSumnail) {
		this.mMainSumnail = mMainSumnail;
	}
	public String getmRegdata() {
		return mRegdata;
	}
	public void setmRegdata(String mRegdata) {
		this.mRegdata = mRegdata;
	}
	public String getmGrade() {
		return mGrade;
	}
	public void setmGrade(String mGrade) {
		this.mGrade = mGrade;
	}
	
	
	
}

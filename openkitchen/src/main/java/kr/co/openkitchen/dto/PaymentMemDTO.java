package kr.co.openkitchen.dto;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@ToString
public class PaymentMemDTO {
	String mName;
	String mPhone;
	String mBirth;
	int mGender;
	int mgStorage;
	int cType;
	int ptStorage;
	
	// getter, setter
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
	public String getmBirth() {
		return mBirth;
	}
	public void setmBirth(String mBirth) {
		this.mBirth = mBirth;
	}
	public int getmGender() {
		return mGender;
	}
	public void setmGender(int mGender) {
		this.mGender = mGender;
	}
	public int getMgStorage() {
		return mgStorage;
	}
	public void setMgStorage(int mgStorage) {
		this.mgStorage = mgStorage;
	}
	public int getcType() {
		return cType;
	}
	public void setcType(int cType) {
		this.cType = cType;
	}
	public int getPtStorage() {
		return ptStorage;
	}
	public void setPtStorage(int ptStorage) {
		this.ptStorage = ptStorage;
	}
	
	
}

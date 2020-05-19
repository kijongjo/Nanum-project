package kr.co.openkitchen.dto;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@ToString
public class AjaxDataDTO {
	int rvNo;
	String rvContent;
	int rvScore;
	int mNo;
	int sNo;
	int cNo;
	int resultNo;
	String rvType;
	
	// getter, setter
	public int getRvNo() {
		return rvNo;
	}
	public void setRvNo(int rvNo) {
		this.rvNo = rvNo;
	}
	public String getRvContent() {
		return rvContent;
	}
	public void setRvContent(String rvContent) {
		this.rvContent = rvContent;
	}
	public int getRvScore() {
		return rvScore;
	}
	public void setRvScore(int rvScore) {
		this.rvScore = rvScore;
	}
	public int getmNo() {
		return mNo;
	}
	public void setmNo(int mNo) {
		this.mNo = mNo;
	}
	public int getsNo() {
		return sNo;
	}
	public void setsNo(int sNo) {
		this.sNo = sNo;
	}
	public int getcNo() {
		return cNo;
	}
	public void setcNo(int cNo) {
		this.cNo = cNo;
	}
	public int getResultNo() {
		return resultNo;
	}
	public void setResultNo(int resultNo) {
		this.resultNo = resultNo;
	}
	public String getRvType() {
		return rvType;
	}
	public void setRvType(String rvType) {
		this.rvType = rvType;
	}
	
	
}

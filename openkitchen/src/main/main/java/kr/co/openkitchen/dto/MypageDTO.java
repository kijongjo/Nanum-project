package kr.co.openkitchen.dto;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@ToString
public class MypageDTO {
	private String mName;
	private String cPerstatus;
	private String sPerstatus;
	private String tPerstatus;
	private int mNo;

	public String getmName() {
		return mName;
	}

	public void setmName(String mName) {
		this.mName = mName;
	}

	public String getcPerstatus() {
		return cPerstatus;
	}

	public void setcPerstatus(String cPerstatus) {
		this.cPerstatus = cPerstatus;
	}

	public String getsPerstatus() {
		return sPerstatus;
	}

	public void setsPerstatus(String sPerstatus) {
		this.sPerstatus = sPerstatus;
	}

	public String gettPerstatus() {
		return tPerstatus;
	}

	public void settPerstatus(String tPerstatus) {
		this.tPerstatus = tPerstatus;
	}

	public int getmNo() {
		return mNo;
	}

	public void setmNo(int mNo) {
		this.mNo = mNo;
	}
	

}

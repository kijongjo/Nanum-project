package kr.co.openkitchen.dto;
//모집 DTO

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@ToString
public class ClassRegistDtoR {
	private int cNo;
	private int renNo;
	private String recDate;
	private String recPerstatus;
	private int recNo;

	public int getcNo() {
		return cNo;
	}

	public void setcNo(int cNo) {
		this.cNo = cNo;
	}

	public int getRenNo() {
		return renNo;
	}

	public void setRenNo(int renNo) {
		this.renNo = renNo;
	}

	public String getRecDate() {
		return recDate;
	}

	public void setRecDate(String recDate) {
		this.recDate = recDate;
	}

	public String getRecPerstatus() {
		return recPerstatus;
	}

	public void setRecPerstatus(String recPersatus) {
		this.recPerstatus = recPersatus;
	}

	public int getRecNo() {
		return recNo;
	}

	public void setRecNo(int recNo) {
		this.recNo = recNo;
	}

}

package kr.co.openkitchen.dto;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@ToString
public class ClassRegistDtoL {
	private int renNo;
	private String sName;
	private String lLeasedate;
	private String lLeasetime;
	private String sMainsumnail;
	private int cNo;
	
	

	public int getRenNo() {
		return renNo;
	}

	public void setRenNo(int renNo) {
		this.renNo = renNo;
	}

	public String getsName() {
		return sName;
	}

	public void setsName(String sName) {
		this.sName = sName;
	}

	public String getlLeasedate() {
		return lLeasedate;
	}

	public void setlLeasedate(String lLeasedate) {
		this.lLeasedate = lLeasedate;
	}

	public String getlLeasetime() {
		return lLeasetime;
	}

	public void setlLeasetime(String lLeasetime) {
		this.lLeasetime = lLeasetime;
	}

	public String getsMainsumnail() {
		return sMainsumnail;
	}

	public void setsMainsumnail(String sMainsumnail) {
		this.sMainsumnail = sMainsumnail;
	}

	public int getcNo() {
		return cNo;
	}

	public void setcNo(int cNo) {
		this.cNo = cNo;
	}

}

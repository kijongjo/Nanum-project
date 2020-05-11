package kr.co.openkitchen.dto;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@ToString
public class StandByClassDTO {
	private String cMainsumnail;
	private String cName;
	private String cRegdate;
	private int cNo;

	public String getcMainsumnail() {
		return cMainsumnail;
	}

	public void setcMainsumnail(String cMainsumnail) {
		this.cMainsumnail = cMainsumnail;
	}

	public String getcName() {
		return cName;
	}

	public void setcName(String cName) {
		this.cName = cName;
	}

	public String getcRegdate() {
		return cRegdate;
	}

	public void setcRegdate(String cRegdate) {
		this.cRegdate = cRegdate;
	}

	public int getcNo() {
		return cNo;
	}

	public void setcNo(int cNo) {
		this.cNo = cNo;
	}
	

}

package kr.co.openkitchen.dto;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@ToString
public class OngoingClassDTO {

	private String cMainsumnail;
	private String cName;
	private String cPerstatus;
	private int cMaxRecruitPerson;
	private String lLeasedate;
	private int eApply;

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

	public String getcPerstatus() {
		return cPerstatus;
	}

	public void setcPerstatus(String cPerstatus) {
		this.cPerstatus = cPerstatus;
	}

	public int getcMaxRecruitPerson() {
		return cMaxRecruitPerson;
	}

	public void setcMaxRecruitPerson(int cMaxRecruitPerson) {
		this.cMaxRecruitPerson = cMaxRecruitPerson;
	}

	public String getlLeasedate() {
		return lLeasedate;
	}

	public void setlLeasedate(String lLeasedate) {
		this.lLeasedate = lLeasedate;
	}

	public int geteApply() {
		return eApply;
	}

	public void seteApply(int eApply) {
		this.eApply = eApply;
	}

}

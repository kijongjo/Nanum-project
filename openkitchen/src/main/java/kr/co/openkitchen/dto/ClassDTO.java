package kr.co.openkitchen.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
public class ClassDTO {
	int cNo;
	String cName;
	String cShortintro;
	String cMainsumnail;
	String cDetailsumnail;
	String cLongintro;
	String cReference;
	int cPrice;
	String cPerstatus;
	String cType;
	String cHashtag;
	String cRegdate;
	int cminrecruitperson;
	int cmaxrecruitperson;
	int tNo;
	
	
	@Override
	public String toString() {
		return "ClassDTO [cNo=" + cNo + ", cName=" + cName + ", cShortintro=" + cShortintro + ", cMainsumnail="
				+ cMainsumnail + ", cDetailsumnail=" + cDetailsumnail + ", cLongintro=" + cLongintro + ", cReference="
				+ cReference + ", cPrice=" + cPrice + ", cPerstatus=" + cPerstatus + ", cType=" + cType + ", cHashtag="
				+ cHashtag + ", cRegdate=" + cRegdate + ", cminrecruitperson=" + cminrecruitperson
				+ ", cmaxrecruitperson=" + cmaxrecruitperson + ", tNo=" + tNo + "]";
	}
	
	
	
	
}

package kr.co.openkitchen.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class MemberDTO {
	int m_No;
	String m_Email;
	String m_Pwd;
	String m_Name;
	String m_Phone;
	int m_Birth;
	int m_Gender;
	String m_MainSumnail;
	String m_Regdata;
	String m_Grade;
	int enabled;
}

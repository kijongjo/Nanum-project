package kr.co.openkitchen.dto;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@ToString
public class CompleteClassDTO {
private String cMainsumnail;
private String cName;
private String lLeasedate;
private String lLeasetime;
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
public int getcNo() {
	return cNo;
}
public void setcNo(int cNo) {
	this.cNo = cNo;
}



}

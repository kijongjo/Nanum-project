package kr.co.openkitchen.dto;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@ToString
public class ClassRegistDtoSch {
	
int cNo;
String lLeasedate;
String lLeasetime;
public int getcNo() {
	return cNo;
}
public void setcNo(int cNo) {
	this.cNo = cNo;
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









}

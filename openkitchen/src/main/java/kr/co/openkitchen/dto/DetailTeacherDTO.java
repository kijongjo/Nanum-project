package kr.co.openkitchen.dto;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@ToString
public class DetailTeacherDTO {
	String tDetailsumnail;
	String tHavenickname;
	String tExpertname;
	String tCareer;
	String tShortintro;
	String tArea;
	String tLongintro;
	String tExpert;
	
	// setter, getter
	public String gettDetailsumnail() {
		return tDetailsumnail;
	}
	public void settDetailsumnail(String tDetailsumnail) {
		this.tDetailsumnail = tDetailsumnail;
	}
	public String gettHavenickname() {
		return tHavenickname;
	}
	public void settHavenickname(String tHavenickname) {
		this.tHavenickname = tHavenickname;
	}
	public String gettExpertname() {
		return tExpertname;
	}
	public void settExpertname(String tExpertname) {
		this.tExpertname = tExpertname;
	}
	public String gettCareer() {
		return tCareer;
	}
	public void settCareer(String tCareer) {
		this.tCareer = tCareer;
	}
	public String gettShortintro() {
		return tShortintro;
	}
	public void settShortintro(String tShortintro) {
		this.tShortintro = tShortintro;
	}
	public String gettArea() {
		return tArea;
	}
	public void settArea(String tArea) {
		this.tArea = tArea;
	}
	public String gettLongintro() {
		return tLongintro;
	}
	public void settLongintro(String tLongintro) {
		this.tLongintro = tLongintro;
	}
	public String gettExpert() {
		return tExpert;
	}
	public void settExpert(String tExpert) {
		this.tExpert = tExpert;
	}
	
}

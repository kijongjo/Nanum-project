package kr.co.openkitchen.service;

import java.util.List;

import kr.co.openkitchen.dto.DetailTeacherDTO;
import kr.co.openkitchen.dto.TeacherIndexDTO;

public interface TserviceInter {
	public List<TeacherIndexDTO> readFiveT();
	public List<TeacherIndexDTO> mainContentT();
	public DetailTeacherDTO readDetailT(int tNo);
}

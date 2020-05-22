package kr.co.openkitchen.dao;

import java.util.List;

import kr.co.openkitchen.dto.DetailTeacherDTO;
import kr.co.openkitchen.dto.TeacherIndexDTO;

public interface TDaoInter {
	public List<TeacherIndexDTO> selectFiveT();
	public List<TeacherIndexDTO> selectContentT();
	public DetailTeacherDTO selectDetailT(int tNo);
	public List<TeacherIndexDTO> moreTeacher(int count);
}

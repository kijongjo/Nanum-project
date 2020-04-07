package kr.co.openkitchen.dao;

import java.util.List;

import kr.co.openkitchen.dto.ClassIndexDTO;
import kr.co.openkitchen.dto.DetailCScheDTO;
import kr.co.openkitchen.dto.DetailClassDTO;

public interface CDaoInter {
	public List<ClassIndexDTO> selectFive();
	public List<ClassIndexDTO> selectContentC();
	public DetailClassDTO selectDetailC(int cNo);
	public List<DetailCScheDTO> selectDetailCSche(int cNo);
	public List<ClassIndexDTO> moreClass(int count);
}

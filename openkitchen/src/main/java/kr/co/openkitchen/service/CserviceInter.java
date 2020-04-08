package kr.co.openkitchen.service;

import java.util.List;

import kr.co.openkitchen.dto.ClassIndexDTO;
import kr.co.openkitchen.dto.DetailCScheDTO;
import kr.co.openkitchen.dto.DetailClassDTO;

public interface CserviceInter {
	public List<ClassIndexDTO> readFive();
	public List<ClassIndexDTO> mainContentC();
	public DetailClassDTO readDetailC(int cNo);
	public List<DetailCScheDTO> readDetailCSche(int cNo);
	public List<ClassIndexDTO> moreClass(int count);
	
}

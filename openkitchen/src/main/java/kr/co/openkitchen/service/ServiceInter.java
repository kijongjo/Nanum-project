package kr.co.openkitchen.service;

import java.util.List;
import java.util.Map;

import kr.co.openkitchen.dto.ClassDTO;
import kr.co.openkitchen.dto.DetailCScheDTO;
import kr.co.openkitchen.dto.DetailClassDTO;
import kr.co.openkitchen.dto.ManwonClassDTO;
import kr.co.openkitchen.dto.PopularClassDTO;

public interface ServiceInter {
	
	public List<ClassDTO> readAll();
	public List<ManwonClassDTO> readManwonC();
	public List<ManwonClassDTO> readOnlyOneC();
	public List<PopularClassDTO> readPopularC(Map<String, Object> map);
	public DetailClassDTO readDetailC(int cNo);
	public List<DetailCScheDTO> readDetailCSche(int cNo);
	
}

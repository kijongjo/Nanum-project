package kr.co.openkitchen.dao;

import java.util.List;
import java.util.Map;

import kr.co.openkitchen.dto.ClassDTO;
import kr.co.openkitchen.dto.ManwonClassDTO;
import kr.co.openkitchen.dto.PopularClassDTO;
import kr.co.openkitchen.dto.SpaceIndexDTO;
import kr.co.openkitchen.dto.ClassIndexDTO;
import kr.co.openkitchen.dto.DetailCScheDTO;
import kr.co.openkitchen.dto.DetailClassDTO;
import kr.co.openkitchen.dto.TeacherIndexDTO;

public interface Dao {
	public List<ClassDTO> selectAll();
	public List<ManwonClassDTO> selectManwonC();
	public List<ManwonClassDTO> selectOnlyoneC();
	public List<PopularClassDTO> selectPopularC(Map<String, Object> map);
	public List<ClassIndexDTO> selectFive();
	public List<TeacherIndexDTO> selectFiveT();
	public List<SpaceIndexDTO> selectFiveS();
	public List<ClassIndexDTO> selectContentC();
	public List<TeacherIndexDTO> selectContentT();
	public List<SpaceIndexDTO> selectContentS();
	public DetailClassDTO selectDetailC(int cNo);
	public List<DetailCScheDTO> selectDetailCSche(int cNo);
	public List<ClassIndexDTO> moreClass(int count);
	public List<TeacherIndexDTO> moreTeacher(int count);
	public List<SpaceIndexDTO> moreSpace(int count);
	
}

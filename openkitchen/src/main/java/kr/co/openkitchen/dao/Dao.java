package kr.co.openkitchen.dao;

import java.util.List;
import java.util.Map;

import kr.co.openkitchen.dto.ClassDTO;
import kr.co.openkitchen.dto.ManwonClassDTO;

public interface Dao {
	public List<ClassDTO> selectAll();
	public List<ManwonClassDTO> selectManwonC();
	public List<ClassDTO> selectPopularC(Map<String, String> map);
}

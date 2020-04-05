package kr.co.openkitchen.dao;

import java.util.List;
import java.util.Map;

import kr.co.openkitchen.dto.ClassDTO;
import kr.co.openkitchen.dto.ManwonClassDTO;
import kr.co.openkitchen.dto.PopularClassDTO;

public interface Dao {
	public List<ClassDTO> selectAll();
	public List<ManwonClassDTO> selectManwonC();
	public List<ManwonClassDTO> selectOnlyoneC();
	public List<PopularClassDTO> selectPopularC(Map<String, Object> map);
}

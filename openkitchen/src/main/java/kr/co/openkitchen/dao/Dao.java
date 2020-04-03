package kr.co.openkitchen.dao;

import java.util.List;

import kr.co.openkitchen.dto.ClassDTO;
import kr.co.openkitchen.dto.ManwonClassDTO;

public interface Dao {
	public List<ClassDTO> selectAll();
	
	public List<ManwonClassDTO> selectManwonC();
}

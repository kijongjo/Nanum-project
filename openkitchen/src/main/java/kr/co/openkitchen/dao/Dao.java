package kr.co.openkitchen.dao;

import java.util.List;

import kr.co.openkitchen.dto.ClassDTO;

public interface Dao {
	public List<ClassDTO> selectAll();
}

package kr.co.openkitchen.service;

import java.util.List;

import kr.co.openkitchen.dto.ClassDTO;
import kr.co.openkitchen.dto.ManwonClassDTO;

public interface ServiceInter {
	
	public List<ClassDTO> readAll();
	
	public List<ManwonClassDTO> readManwonC();
	
}

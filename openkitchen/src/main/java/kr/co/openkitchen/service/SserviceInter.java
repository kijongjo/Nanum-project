package kr.co.openkitchen.service;

import java.util.List;

import kr.co.openkitchen.dto.DetailSpaceDTO;
import kr.co.openkitchen.dto.SpaceIndexDTO;

public interface SserviceInter {
	public List<SpaceIndexDTO> readFiveS();
	public List<SpaceIndexDTO> mainContentS();
	public List<SpaceIndexDTO> moreSpace(int count);
	public DetailSpaceDTO readDetailS(int sNo);
}

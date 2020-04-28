package kr.co.openkitchen.dao;

import java.util.List;
import java.util.Map;

import kr.co.openkitchen.dto.DetailSScheDTO;
import kr.co.openkitchen.dto.DetailSpaceDTO;
import kr.co.openkitchen.dto.SpaceIndexDTO;

public interface SDaoInter {
	public List<SpaceIndexDTO> selectFiveS();
	public List<SpaceIndexDTO> selectContentS();
	public List<SpaceIndexDTO> moreSpace(int count);
	public DetailSpaceDTO selectDetailS(int sNo);
	public List<DetailSScheDTO> selectDetailSSche(Map<String, Object> map);
}

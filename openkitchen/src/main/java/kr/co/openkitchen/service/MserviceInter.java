package kr.co.openkitchen.service;

import java.util.List;
import java.util.Map;

import kr.co.openkitchen.dto.BestClassDTO;
import kr.co.openkitchen.dto.ClassDTO;
import kr.co.openkitchen.dto.ManwonClassDTO;
import kr.co.openkitchen.dto.PopularClassDTO;

public interface MserviceInter {
	public List<ClassDTO> readAll();
	public List<ManwonClassDTO> readManwonC();
	public List<ManwonClassDTO> readOnlyOneC();
	public List<PopularClassDTO> readPopularC(Map<String, Object> map);
	public List<BestClassDTO> readBestC(Map<String, Object> map);
	public int addWishlist(Map<String, Object> map);
	public int readWishlist(Map<String, Object> map);
	public int deleteWishlist(Map<String, Object> map);
	public List<Map<String, Object>> readReviewCheck(Map<String, Object> map);
	public List<Map<String, Object>> readRiviewInfo(Map<String, Object> map);
}

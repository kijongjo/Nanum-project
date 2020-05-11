package kr.co.openkitchen.dao;

import java.util.List;
import java.util.Map;

import kr.co.openkitchen.dto.BestClassDTO;
import kr.co.openkitchen.dto.ClassDTO;
import kr.co.openkitchen.dto.ManwonClassDTO;
import kr.co.openkitchen.dto.PopularClassDTO;
import kr.co.openkitchen.dto.SpaceIndexDTO;
import kr.co.openkitchen.dto.ClassIndexDTO;
import kr.co.openkitchen.dto.DetailCScheDTO;
import kr.co.openkitchen.dto.DetailClassDTO;
import kr.co.openkitchen.dto.DetailTeacherDTO;
import kr.co.openkitchen.dto.TeacherIndexDTO;

public interface MDaoInter {
	public List<ClassDTO> selectAll();
	public List<ManwonClassDTO> selectManwonC();
	public List<ManwonClassDTO> selectOnlyoneC();
	public List<PopularClassDTO> selectPopularC(Map<String, Object> map);
	public List<BestClassDTO> selectBestC(Map<String, Object> map);
	public int insertWishlist(Map<String, Object> map);
	public int selectWishlist(Map<String, Object> map);

}

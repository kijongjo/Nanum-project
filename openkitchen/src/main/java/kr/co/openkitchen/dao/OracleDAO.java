package kr.co.openkitchen.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.openkitchen.dto.ClassDTO;
import kr.co.openkitchen.dto.ManwonClassDTO;
import kr.co.openkitchen.dto.PopularClassDTO;
import kr.co.openkitchen.dto.SpaceIndexDTO;
import kr.co.openkitchen.dto.ClassIndexDTO;
import kr.co.openkitchen.dto.TeacherIndexDTO;
import lombok.Setter;

@Repository
public class OracleDAO implements Dao {
	
	// mybatis와 db연동을 위한 자동 의존성 주입
	@Setter(onMethod=@__({@Autowired}))
	SqlSession ss;

	@Override
	public List<ClassDTO> selectAll() {
		
		return ss.selectList("kr.co.openkitchen.class.selectAll");
	}
	
	@Override
	public List<ManwonClassDTO> selectManwonC() {
		return ss.selectList("kr.co.openkitchen.class.selectManwonC");
	}
	
	
	@Override
	public List<ManwonClassDTO> selectOnlyoneC() {
		
		return ss.selectList("kr.co.openkitchen.class.selectOnlyOneC");
	}
	

	@Override
	public List<PopularClassDTO> selectPopularC(Map<String, Object> map) {
		
		return ss.selectList("kr.co.openkitchen.class.selectPopularC", map);
	}

	@Override
	public List<ClassIndexDTO> selectFive() {
		return ss.selectList("kr.co.openkitchenIndex.recentlyClass");
	}

	@Override
	public List<TeacherIndexDTO> selectFiveT() {
		return ss.selectList("kr.co.openkitchenIndex.recentlyTeacher");
	}

	@Override
	public List<SpaceIndexDTO> selectFiveS() {
		return ss.selectList("kr.co.openkitchenIndex.recentlySpace");
	}

	@Override
	public List<ClassIndexDTO> selectContentC() {
		return ss.selectList("kr.co.openkitchenIndex.ContentClass");
	}

	@Override
	public List<TeacherIndexDTO> selectContentT() {
		return ss.selectList("kr.co.openkitchenIndex.ContentTeacher");
	}
	
	@Override
	public List<SpaceIndexDTO> selectContentS() {
		return ss.selectList("kr.co.openkitchenIndex.ContentSpace");
	}

}

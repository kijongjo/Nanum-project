package kr.co.openkitchen.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.openkitchen.dto.ClassDTO;
import kr.co.openkitchen.dto.ManwonClassDTO;
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
	public List<ClassDTO> selectPopularC(Map<String, String> map) {
		
		return ss.selectList("kr.co.openkitchen.class.selectPopularC", map);
	}
	
	
	
	
	
	
	
	
	
	
	
}

package kr.co.openkitchen.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.openkitchen.dto.ClassIndexDTO;
import kr.co.openkitchen.dto.DetailCScheDTO;
import kr.co.openkitchen.dto.DetailClassDTO;
import lombok.Setter;

@Repository
public class ClassDAO implements CDaoInter {
	// mybatis와 db연동을 위한 자동 의존성 주입
	@Setter(onMethod=@__({@Autowired}))
	SqlSession ss;
	
	@Override
	public List<ClassIndexDTO> selectFive() {
		return ss.selectList("kr.co.openkitchenIndex.recentlyClass");
	}
	
	
	@Override
	public List<ClassIndexDTO> selectContentC() {
		return ss.selectList("kr.co.openkitchenIndex.ContentClass");
	}
	
	@Override
	public DetailClassDTO selectDetailC(int cNo) {
		
		return ss.selectOne("kr.co.openkitchen.class.selectDetailC", cNo);
	}

	@Override
	public List<DetailCScheDTO> selectDetailCSche(int cNo) {
		
		return ss.selectList("kr.co.openkitchen.class.selectDetailCSche", cNo);
	}
}

package kr.co.openkitchen.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.openkitchen.dto.ClassDTO;
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
	
	
	
	
	
	
	
}

package kr.co.openkitchen.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.openkitchen.dto.SpaceIndexDTO;
import lombok.Setter;

@Repository
public class SpaceDAO implements SDaoInter {
	// mybatis와 db연동을 위한 자동 의존성 주입
	@Setter(onMethod=@__({@Autowired}))
	SqlSession ss;
	
	
	@Override
	public List<SpaceIndexDTO> selectFiveS() {
		return ss.selectList("kr.co.openkitchenIndex.recentlySpace");
	}

	@Override
	public List<SpaceIndexDTO> selectContentS() {
		return ss.selectList("kr.co.openkitchenIndex.ContentSpace");
	}
	@Override
	public List<SpaceIndexDTO> moreSpace(int count) {
		return ss.selectList("kr.co.openkitchenIndex.MoreSpace", count*8);
	}
}

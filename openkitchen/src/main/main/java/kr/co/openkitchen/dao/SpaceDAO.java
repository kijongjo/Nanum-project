package kr.co.openkitchen.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.openkitchen.dto.DetailSScheDTO;
import kr.co.openkitchen.dto.DetailSpaceDTO;
import kr.co.openkitchen.dto.SpaceIndexDTO;
import kr.co.openkitchen.dto.PaymentSpaceDTO;
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

	@Override
	public DetailSpaceDTO selectDetailS(int sNo) {
		
		return ss.selectOne("kr.co.openkitchen.space.selectDetailS", sNo);
	}

	@Override
	public List<DetailSScheDTO> selectDetailSSche(Map<String, Object> map) {
		
		return ss.selectList("kr.co.openkitchen.space.selectDetailSSche", map);
	}

	@Override
	public List<PaymentSpaceDTO> selectPaymentS(Map<String, Object> map) {
		
		return ss.selectList("kr.co.openkitchen.space.selectPaymentS", map);
	}

	@Override
	public int insertPaymentS(Map<String, Object> map) {
		
		return ss.insert("kr.co.openkitchen.space.insertPaymentS", map);	
	}
	
	
	
	
	
	
	
}

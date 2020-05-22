package kr.co.openkitchen.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.openkitchen.dto.BestClassDTO;
import kr.co.openkitchen.dto.ClassDTO;
import kr.co.openkitchen.dto.ClassIndexDTO;
import kr.co.openkitchen.dto.DetailCScheDTO;
import kr.co.openkitchen.dto.DetailClassDTO;
import kr.co.openkitchen.dto.ManwonClassDTO;
import kr.co.openkitchen.dto.PopularClassDTO;
import kr.co.openkitchen.dto.SpaceIndexDTO;
import lombok.Setter;

@Repository
public class MainDAO implements MDaoInter {
	
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
	public List<BestClassDTO> selectBestC(Map<String, Object> map) {
		
		return ss.selectList("kr.co.openkitchen.class.selectBestC", map);
	}
	
	@Override
	public int insertWishlist(Map<String, Object> map) {
		
		return ss.insert("kr.co.openkitchen.mypage.insertWishlist", map);
	}

	@Override
	public int selectWishlist(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return ss.selectOne("kr.co.openkitchen.mypage.selectWishlist", map);
	}
	
	



	




}

package kr.co.openkitchen.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.openkitchen.dao.Dao;
import kr.co.openkitchen.dto.ClassDTO;
import kr.co.openkitchen.dto.DetailCScheDTO;
import kr.co.openkitchen.dto.DetailClassDTO;
import kr.co.openkitchen.dto.ManwonClassDTO;
import kr.co.openkitchen.dto.PopularClassDTO;
import lombok.Setter;

@Service
public class ServiceImple implements ServiceInter {
	
	// Dao의 구현객체인 OracleDAO를 사용하기 위한 자동 의존 주입
	@Setter(onMethod = @__({@Autowired}))
	Dao dao;
	
	@Override
	public List<ClassDTO> readAll() {
		// TODO Auto-generated method stub
		return dao.selectAll();
	}

	@Override
	public List<ManwonClassDTO> readManwonC() {
	
		return dao.selectManwonC();
	}
	
	@Override
	public List<ManwonClassDTO> readOnlyOneC() {
	
		return dao.selectOnlyoneC();
	}

	@Override
	public List<PopularClassDTO> readPopularC(Map<String, Object> map) {
		
		return dao.selectPopularC(map);
	}

	@Override
	public DetailClassDTO readDetailC(int cNo) {
		
		return dao.selectDetailC(cNo);
	}

	@Override
	public List<DetailCScheDTO> readDetailCSche(int cNo) {
		
		return dao.selectDetailCSche(cNo);
	}
	
	
	

	
	
	
	
	
	
}
package kr.co.openkitchen.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.openkitchen.dao.MDaoInter;
import kr.co.openkitchen.dto.BestClassDTO;
import kr.co.openkitchen.dto.ClassDTO;
import kr.co.openkitchen.dto.ManwonClassDTO;
import kr.co.openkitchen.dto.PopularClassDTO;
import lombok.Setter;

@Service
public class MainService implements MserviceInter{
	// Dao의 구현객체인 OracleDAO를 사용하기 위한 자동 의존 주입
		@Setter(onMethod = @__({@Autowired}))
		MDaoInter dao;
		
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
		public List<BestClassDTO> readBestC(Map<String, Object> map) {
		
			return dao.selectBestC(map);
		}
		
		
}

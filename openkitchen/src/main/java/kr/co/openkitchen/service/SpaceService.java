package kr.co.openkitchen.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.openkitchen.dao.SDaoInter;
import kr.co.openkitchen.dto.DetailSScheDTO;
import kr.co.openkitchen.dto.DetailSpaceDTO;
import kr.co.openkitchen.dto.SpaceIndexDTO;
import kr.co.openkitchen.dto.PaymentSpaceDTO;
import lombok.Setter;

@Service
public class SpaceService implements SserviceInter {
	// Dao의 구현객체인 OracleDAO를 사용하기 위한 자동 의존 주입
	@Setter(onMethod = @__({@Autowired}))
	SDaoInter dao;
		
		@Override
		public List<SpaceIndexDTO> readFiveS() {
			return dao.selectFiveS();
		}

		@Override
		public List<SpaceIndexDTO> mainContentS() {
			return dao.selectContentS();
		}
		
		@Override
		public List<SpaceIndexDTO> moreSpace(int count) {
			return dao.moreSpace(count);
		}

		@Override
		public DetailSpaceDTO readDetailS(int sNo) {
			
			return dao.selectDetailS(sNo);
		}

		@Override
		public List<DetailSScheDTO> readDetailSSche(Map<String, Object> map) {
			
			return dao.selectDetailSSche(map);
		}

		@Override
		public List<PaymentSpaceDTO> readPaymentS(Map<String, Object> map) {
			
			return dao.selectPaymentS(map);
		}
		
		
}

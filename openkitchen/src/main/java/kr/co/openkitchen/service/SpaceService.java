package kr.co.openkitchen.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.openkitchen.dao.SDaoInter;
import kr.co.openkitchen.dto.SpaceIndexDTO;
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
}

package kr.co.openkitchen.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.openkitchen.dao.CDaoInter;
import kr.co.openkitchen.dto.ClassIndexDTO;
import kr.co.openkitchen.dto.DetailCScheDTO;
import kr.co.openkitchen.dto.DetailClassDTO;
import kr.co.openkitchen.dto.PaymentClassDTO;
import lombok.Setter;

@Service
public class ClassService implements CserviceInter {
	// Dao의 구현객체인 OracleDAO를 사용하기 위한 자동 의존 주입
		@Setter(onMethod = @__({@Autowired}))
		CDaoInter dao;
		
		@Override
		public List<ClassIndexDTO> readFive() {
			return dao.selectFive();
		}
		
		@Override
		public List<ClassIndexDTO> mainContentC() {
			return dao.selectContentC();
		}
		
		@Override
		public DetailClassDTO readDetailC(int cNo) {
			
			return dao.selectDetailC(cNo);
		}
		
		@Override
		public List<DetailCScheDTO> readDetailCSche(Map<String, String> map) {
			
			return dao.selectDetailCSche(map);
		}
		
		@Override
		public List<ClassIndexDTO> moreClass(int count) {
			return dao.moreClass(count);
		}

		@Override
		public PaymentClassDTO readPaymentC(int recNo) {
		
			return dao.selectPaymentC(recNo);
		}
		
		@Override
		public int addPaymentCData(Map<String, Object> map) {
			
			return dao.insertPaymentC(map);
			
		}
		
		
		
		
		
		
}

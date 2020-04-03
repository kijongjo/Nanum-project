package kr.co.openkitchen.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.openkitchen.dao.Dao;
import kr.co.openkitchen.dto.ClassDTO;
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
	
}

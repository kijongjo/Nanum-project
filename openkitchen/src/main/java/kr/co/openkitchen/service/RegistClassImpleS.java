package kr.co.openkitchen.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.co.openkitchen.classes.GenericOne;
import kr.co.openkitchen.dao.RegisterDaoInter;

@Service
public class RegistClassImpleS implements RegistServiceInter {

	@Resource(name="classRegistDaoS")
	RegisterDaoInter dao ;
	 
	@Override
	public <T> void insertDTO(T dto) {

		
		
		dao.insertDTO(dto);
		
	}

	@Override
	public <T> GenericOne<T> selectOne(T tNo) {
		
		return dao.selectOne(tNo);
	}
	
	@Override
	public <T> void applyDTO(T dto) {
	
	}

	
	
	
	
	
	
}

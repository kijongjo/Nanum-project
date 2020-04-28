package kr.co.openkitchen.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.co.openkitchen.classes.GenericOne;
import kr.co.openkitchen.dao.RegisterDaoInter;

@Service
public class RegistClassImpleSch implements RegistServiceInter {

	
	@Resource(name="classRegistDaoSch")
	RegisterDaoInter dao ;
	
	@Override
	public <T> GenericOne<T> selectOne(T genericOne) {
	  
	return dao.selectOne(genericOne);
	}
	
	@Override
	public <T> void insertDTO(T cNo) {
	 
		dao.insertDTO(cNo);
		
	}
	
}

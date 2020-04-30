package kr.co.openkitchen.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.co.openkitchen.classes.GenericOne;
import kr.co.openkitchen.classes.MypageCookInterType;
import kr.co.openkitchen.dao.MypageCookDaoInter;


@Service
public class MypageCookEnd implements MypageCookInter {

	
	@Override
	public MypageCookInterType getServiceType() {
		// TODO Auto-generated method stub
		return MypageCookInterType.MYPAGECOOKEND;
	}
	
	
	@Resource(name = "mypageCookEndDAO")
	MypageCookDaoInter dao;
	
	
	@Override
	public <T> GenericOne<T> selectOne(T genericOne) {
		return dao.selectOne(genericOne);
		
	}
	
}

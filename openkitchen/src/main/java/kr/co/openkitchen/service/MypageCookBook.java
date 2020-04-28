package kr.co.openkitchen.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.co.openkitchen.classes.GenericOne;
import kr.co.openkitchen.dao.MypageCookDaoInter;
@Service
public class MypageCookBook implements MypageCookInter {
	@Resource(name = "mypageCookBookDAO")
	MypageCookDaoInter dao;
	
	
	@Override
	public <T> GenericOne<T> selectOne(T genericOne) {
		
		return dao.selectOne(genericOne);
	}
	
}

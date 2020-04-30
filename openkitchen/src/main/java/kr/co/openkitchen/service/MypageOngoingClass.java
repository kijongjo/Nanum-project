package kr.co.openkitchen.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.co.openkitchen.classes.GenericOne;
import kr.co.openkitchen.classes.MypageOpenCType;
import kr.co.openkitchen.dao.MypageOpenClassDaoInter;


@Service
public class MypageOngoingClass implements MypageOpenClassInter {

	@Resource(name = "mypageOngoingClassDAO")
	MypageOpenClassDaoInter dao;
	
     @Override
    public MypageOpenCType getServiceType() {
    	// TODO Auto-generated method stub
    	return MypageOpenCType.MYPAGEONGOINGCLASS;
    }
	
	
	@Override
	public <T> GenericOne<T> selectOne(T genericOne) {
		return dao.selectOne(genericOne);
		
	}
	
}
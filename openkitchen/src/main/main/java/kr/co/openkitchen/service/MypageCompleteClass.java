package kr.co.openkitchen.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.co.openkitchen.classes.GenericOne;
import kr.co.openkitchen.classes.MypageOpenCType;
import kr.co.openkitchen.dao.MypageOpenClassDaoInter;

@Service
public class MypageCompleteClass implements MypageOpenClassInter {

	@Resource(name = "mypageCompleteClassDAO")
	MypageOpenClassDaoInter dao;

	@Override
	public MypageOpenCType getServiceType() {
		// TODO Auto-generated method stub
		return MypageOpenCType.MYPAGECOMPLETECLASS;
	}
	
	@Override
	public <T> GenericOne<T> selectOne(T mNo) {
		return dao.selectOne(mNo);

	}

}

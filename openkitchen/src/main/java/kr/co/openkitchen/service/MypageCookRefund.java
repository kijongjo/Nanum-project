package kr.co.openkitchen.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.co.openkitchen.classes.GenericOne;
import kr.co.openkitchen.classes.MypageCookInterType;
import kr.co.openkitchen.dao.MypageCookDaoInter;


@Service
public class MypageCookRefund implements MypageCookInter {

	@Resource(name = "mypageCookRefundDAO")
	MypageCookDaoInter dao;
	
	@Override
	public MypageCookInterType getServiceType() {
		// TODO Auto-generated method stub
		return MypageCookInterType.MYPAGECOOKREFUND;
	}
	
	
	@Override
	public <T> GenericOne<T> selectOne(T genericOne) {
		return dao.selectOne(genericOne);
		
	}
	
}

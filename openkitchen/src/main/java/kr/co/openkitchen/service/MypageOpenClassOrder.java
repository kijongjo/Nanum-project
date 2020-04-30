package kr.co.openkitchen.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.openkitchen.classes.MypageOpenCFactory;
import kr.co.openkitchen.classes.MypageOpenCType;

@Service
public class MypageOpenClassOrder {

	@Autowired
	private  MypageOpenCFactory mypageOpenCFactory ;

	public MypageOpenClassInter receiveOrder(MypageOpenCType mypageOpenCType ) {

		return mypageOpenCFactory.getService(mypageOpenCType);

	}
	
}

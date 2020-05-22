package kr.co.openkitchen.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.openkitchen.classes.MypageCookFactory;
import kr.co.openkitchen.classes.MypageCookInterType;

@Service
public class MypageCookOrder {

	 @Autowired
	private MypageCookFactory mypageCookFactory;

	public MypageCookInter receiveOrder(MypageCookInterType mypageCookType) {
		return mypageCookFactory.getService(mypageCookType);
	}

}

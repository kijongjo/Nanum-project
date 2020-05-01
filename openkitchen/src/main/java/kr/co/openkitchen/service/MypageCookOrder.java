package kr.co.openkitchen.service;

import org.springframework.beans.factory.annotation.Autowired;

import kr.co.openkitchen.classes.MypageCookFactory;
import kr.co.openkitchen.classes.MypageCookInterType;

public class MypageCookOrder {

	@Autowired
	private MypageCookFactory mypageCookFactory;

	public MypageCookInter receiveOrder(MypageCookInterType mypageCookType) {
		return mypageCookFactory.getService(mypageCookType);
	}

}

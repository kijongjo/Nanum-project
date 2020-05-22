package kr.co.openkitchen.service;

import kr.co.openkitchen.classes.GenericOne;
import kr.co.openkitchen.classes.MypageCookInterType;

public interface MypageCookInter {

	MypageCookInterType getServiceType();

	public <T> GenericOne<T> selectOne(T genericOne);
}

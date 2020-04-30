package kr.co.openkitchen.service;

import kr.co.openkitchen.classes.GenericOne;
import kr.co.openkitchen.classes.MypageOpenCType;

public interface MypageOpenClassInter {

	MypageOpenCType getServiceType();
	
	public <T> GenericOne<T> selectOne(T genericOne);
}

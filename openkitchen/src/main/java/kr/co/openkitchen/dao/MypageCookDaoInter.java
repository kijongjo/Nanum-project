package kr.co.openkitchen.dao;

import kr.co.openkitchen.classes.GenericOne;

public interface MypageCookDaoInter {

	
	 public <T> GenericOne<T> selectOne(T genericOne);
}

package kr.co.openkitchen.dao;

import kr.co.openkitchen.classes.GenericOne;

public interface MypageOpenClassDaoInter {

	
	 public <T> GenericOne<T> selectOne(T genericOne);
}

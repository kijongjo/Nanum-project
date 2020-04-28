package kr.co.openkitchen.service;

import kr.co.openkitchen.classes.GenericOne;

public interface MypageCookInter {
    
	
    public <T> GenericOne<T> selectOne(T genericOne);
}

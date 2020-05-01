package kr.co.openkitchen.service;

import kr.co.openkitchen.classes.GenericOne;
import kr.co.openkitchen.classes.RegistServiceType;
import kr.co.openkitchen.classes.Util;
//선생님,클래스,공간정보를 가지고옴 코드 재사용성을 높이기 위해 제네릭 사용함
//파일을 다루지않는 RegistServiceInterface 
public interface RegistServiceInter {
	
	RegistServiceType getServiceType();
		
	
	public <T> void insertDTO(T dto);
	
	
    default <T> GenericOne<T> selectOne(T genericOne){
    	//자식에서 직접 구현하자.
    	return Util.packing(genericOne);
    };


}



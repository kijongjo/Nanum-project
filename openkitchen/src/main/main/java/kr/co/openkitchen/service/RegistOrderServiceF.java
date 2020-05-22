package kr.co.openkitchen.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.openkitchen.classes.RegistServiceFactoryF;
import kr.co.openkitchen.classes.RegistServiceTypeF;

//by 조기종 Factory Design Pattern 주입된 Interface 객체 Return_200401
@Service
public class RegistOrderServiceF {
    
    @Autowired
	private RegistServiceFactoryF registServiceFactoryF;
   
	public RegistServiceInterF receiveOrderF(RegistServiceTypeF registType) {
		 //ENUM 타입에 따라 알맞게 주입된 Interface 객체 반환 
		return registServiceFactoryF.getServiceF(registType);

	}//receiveOrderF End

}

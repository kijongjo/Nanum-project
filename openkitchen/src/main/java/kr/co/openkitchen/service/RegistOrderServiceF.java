package kr.co.openkitchen.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.openkitchen.classes.RegistServiceFactoryF;
import kr.co.openkitchen.classes.RegistServiceTypeF;

@Service
public class RegistOrderServiceF {

	@Autowired
	private RegistServiceFactoryF registServiceFactoryF;

	public RegistServiceInterF receiveOrderF(RegistServiceTypeF registType) {
		return registServiceFactoryF.getServiceF(registType);

	}

}

package kr.co.openkitchen.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.openkitchen.classes.RegistServiceFactory;
import kr.co.openkitchen.classes.RegistServiceType;

@Service
public class RegistOrderService {

	@Autowired
	private RegistServiceFactory registServiceFactory;

	public RegistServiceInter receiveOrder(RegistServiceType registType) {

		return registServiceFactory.getService(registType);

	}
}

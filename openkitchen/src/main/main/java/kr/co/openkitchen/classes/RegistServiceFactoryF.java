package kr.co.openkitchen.classes;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

import kr.co.openkitchen.service.RegistServiceInterF;

//by 조기종 생성자 DI 주입후 객체 생성_200401
@Component
public class RegistServiceFactoryF {
	// 구현 Class 목록 collection
	private final Map<RegistServiceTypeF, RegistServiceInterF> registServicesF = new HashMap<>();

	//by 조기종 생성자 di주입
	public RegistServiceFactoryF(List<RegistServiceInterF> registServicesF) {
		// RegistService를 상속받는 빈이 없을 경우 에러 던진다.
		if (CollectionUtils.isEmpty(registServicesF)) {
			throw new IllegalArgumentException("존재하는  registService가 없음");
		} // 오류 보고 end
			// registServiceInter의 구현체인 bean들을 for문을 돌리면서 key는 음식 종류의 타입, value는 해당 동일한
			// bean을 map에 담아준다.
		for (RegistServiceInterF registServiceF : registServicesF) {
			this.registServicesF.put(registServiceF.getServiceType(), registServiceF);
		}

	}// 생성자 END
	
   //by 조기종 주입된 Interface 객체 Return
	public RegistServiceInterF getServiceF(RegistServiceTypeF registType) {
        
		return registServicesF.get(registType);
	}//getServiceF End

}

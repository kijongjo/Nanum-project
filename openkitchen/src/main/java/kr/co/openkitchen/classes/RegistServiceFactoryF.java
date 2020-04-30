package kr.co.openkitchen.classes;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.util.CollectionUtils;

import kr.co.openkitchen.service.RegistServiceInterF;

public class RegistServiceFactoryF {
	// 목록 collection
	private final Map<RegistServiceTypeF, RegistServiceInterF> registServicesF = new HashMap<>();

	// 생성자 di주입
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

	public RegistServiceInterF getServiceF(RegistServiceTypeF registType) {

		return registServicesF.get(registType);
	}

}

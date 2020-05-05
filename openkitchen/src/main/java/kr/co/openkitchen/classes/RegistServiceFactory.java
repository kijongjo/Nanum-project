package kr.co.openkitchen.classes;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

import kr.co.openkitchen.service.RegistServiceInter;

@Component
public class RegistServiceFactory {
	// RegistService를 담고있어줄 map
	private final Map<RegistServiceType, RegistServiceInter> registServices = new HashMap<>();

	// autowired 걸어주면 하위 class가 생성자에 자동으로 목록에 들어간다.
	// 생성자 주입으로 RegistService를 상속하고 있는 bean들을 주입받음 (생성자가 필드보다 낫다! 기억할 것
	// stackoverflow에도 추천)
	public RegistServiceFactory(List<RegistServiceInter> registServices) {
		// RegistService를 상속받는 빈이 없을 경우 에러 던진다.
		if (CollectionUtils.isEmpty(registServices)) {
			throw new IllegalArgumentException("존재하는  registService가 없음");
		} // 오류 보고 end
			// registServiceInter의 구현체인 bean들을 for문을 돌리면서 key는 음식 종류의 타입, value는 해당 동일한
			// bean을 map에 담아준다.
		for (RegistServiceInter registService : registServices) {
			this.registServices.put(registService.getServiceType(), registService);
		}

	}// registserviceFactory method end

	public RegistServiceInter getService(RegistServiceType registType) {
		// 인자로 넘겨준 타입에 맞는 registService의 bean을 넘겨줌
		return registServices.get(registType);
	}// getService end

}// class end

package kr.co.openkitchen.classes;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.util.CollectionUtils;

import kr.co.openkitchen.service.MypageCookInter;

public class MypageCookFactory {

	  private final Map<MypageCookInterType,MypageCookInter> mypageCooks = new HashMap<>();
	  
	  public MypageCookFactory(List<MypageCookInter> mypageCooks) {
			// RegistService를 상속받는 빈이 없을 경우 에러 던진다.
			if (CollectionUtils.isEmpty(mypageCooks)) {
				throw new IllegalArgumentException("존재하는  registService가 없음");
			} // 오류 보고 end
				// registServiceInter의 구현체인 bean들을 for문을 돌리면서 key는 음식 종류의 타입, value는 해당 동일한
				// bean을 map에 담아준다.
			for (MypageCookInter mypageCook : mypageCooks) {
				this.mypageCooks.put(mypageCook.getServiceType(), mypageCook);
			}

		}// mypage method end
	  
	  public MypageCookInter getService(MypageCookInterType mypageCookType) {
		  
		  return mypageCooks.get(mypageCookType);
	  }
	
}

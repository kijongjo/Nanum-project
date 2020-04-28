package kr.co.openkitchen.service;

import kr.co.openkitchen.dto.MypageDTO;

public interface MypageServiceInter {
    
	//사용자의 상태값을 받아온다.
	public MypageDTO mypageInfo(int mNo);
	
	
	
}

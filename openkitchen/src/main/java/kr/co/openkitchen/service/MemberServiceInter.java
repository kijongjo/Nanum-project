package kr.co.openkitchen.service;

import kr.co.openkitchen.dto.MemberDTO;

public interface MemberServiceInter {
	public void signUp(String mEmail, String mPwd, String mName);
	public MemberDTO selectUserData(String mEmail);
}

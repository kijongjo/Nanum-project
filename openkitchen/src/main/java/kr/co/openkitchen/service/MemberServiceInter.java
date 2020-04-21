package kr.co.openkitchen.service;

import kr.co.openkitchen.dto.MemberDTO;
import kr.co.openkitchen.dto.PaymentMemDTO;

public interface MemberServiceInter {
	public void signUp(String mEmail, String mPwd, String mName);
	public MemberDTO selectUserData(String mEmail);
	public PaymentMemDTO readPaymentM(int mNo);
}

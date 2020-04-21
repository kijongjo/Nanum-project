package kr.co.openkitchen.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.openkitchen.dao.MemberDaoInter;
import kr.co.openkitchen.dto.MemberDTO;
import kr.co.openkitchen.dto.PaymentMemDTO;
import lombok.Setter;

@Service
public class MemberServiceImple implements MemberServiceInter{
	
	@Setter(onMethod=@__({@Autowired}))
	MemberDaoInter dao;
	
	
	@Override
	public void signUp(String mEmail, String mPwd, String mName) {
		dao.insertOne(mEmail, mPwd, mName);
	}
	

	@Override
	public MemberDTO selectUserData(String mEmail) {
		return dao.selectUserData(mEmail);
	}


	@Override
	public PaymentMemDTO readPaymentM(int mNo) {
		
		return dao.selectPaymentM(mNo);
	}
	
	
	
}

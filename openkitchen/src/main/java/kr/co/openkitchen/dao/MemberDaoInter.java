package kr.co.openkitchen.dao;

import java.util.ArrayList;

import kr.co.openkitchen.dto.MemberDTO;
import kr.co.openkitchen.dto.PaymentMemDTO;

public interface MemberDaoInter {
	public ArrayList<MemberDTO> selectAll();
	public MemberDTO selectOne();
	public void insertOne(String mEmail, String mPwd, String mName);
	public void modify();
	public void delete();
	public MemberDTO selectUserData(String mEmail);
	public PaymentMemDTO selectPaymentM(int mNo);
}

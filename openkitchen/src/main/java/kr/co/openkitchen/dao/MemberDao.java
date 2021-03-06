package kr.co.openkitchen.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.openkitchen.dto.MemberDTO;
import lombok.Setter;

@Repository
public class MemberDao implements MemberDaoInter{

	@Setter(onMethod=@__({@Autowired}))
	SqlSession ss;
	
	
	@Override
	public ArrayList<MemberDTO> selectAll() {
		
		return null;
	}

	@Override
	public MemberDTO selectOne() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void insertOne(String mEmail, String mPwd, String mName) {
		MemberDTO dto = new MemberDTO();
		dto.setmEmail(mEmail);
		dto.setmPwd(mPwd);
		dto.setmName(mName);
		ss.insert("kr.co.openkitchen.dto.MemberDTO.signUpInsert",dto);
	}

	@Override
	public void modify() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public MemberDTO selectUserData(String mEmail) {
		MemberDTO dto = new MemberDTO();
		dto.setmEmail(mEmail);
		
		return ss.selectOne("kr.co.openkitchen.dto.MemberDTO.selectUserData",mEmail);
		
	}

}

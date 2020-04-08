package kr.co.openkitchen.dao;

import java.util.ArrayList;

import kr.co.openkitchen.dto.MemberDTO;

public interface MemberDaoInter {
	public ArrayList<MemberDTO> selectAll();
	public MemberDTO selectOne();
	public void insertOne();
	public void modify();
	public void delete();
	
}

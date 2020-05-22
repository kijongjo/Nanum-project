package kr.co.openkitchen.service;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.co.openkitchen.dao.MypageDaoInter;
import kr.co.openkitchen.dto.MypageDTO;

@Service
public class MypageServiceImple implements MypageServiceInter {

	@Resource(name = "mypageDAO")
	MypageDaoInter dao;

	@Override
	public MypageDTO mypageInfo(int mNo) {

		return dao.selectOne(mNo);
	}

	
	
	

}

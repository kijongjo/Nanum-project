package kr.co.openkitchen.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.openkitchen.dto.MypageDTO;
import lombok.Setter;

@Repository
public class MypageDAO implements MypageDaoInter {
	@Setter(onMethod=@__({@Autowired}))
	SqlSession ss;
	
	
	@Override
	public MypageDTO selectOne(int mNo) {
		return  ss.selectOne("kr.co.openkitchen.mypage.mypageInfo",mNo);
	}
	 
	
}

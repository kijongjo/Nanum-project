package kr.co.openkitchen.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.openkitchen.classes.GenericOne;
import kr.co.openkitchen.classes.Util;
import lombok.Setter;

@Repository
public class MypageStandByClassDAO implements MypageOpenClassDaoInter{

	@Setter(onMethod = @__({ @Autowired }))
	SqlSession ss;

	@Override
	public <T> GenericOne<T> selectOne(T genericOne) {

		return Util.packingStandBy(ss.selectList("kr.co.openkitchen.mypageOpenClass.standByClassList", genericOne));
	}

}

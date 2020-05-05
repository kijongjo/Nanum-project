package kr.co.openkitchen.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.openkitchen.classes.GenericOne;
import kr.co.openkitchen.classes.Util;
import lombok.Setter;

@Repository
public class ClassRegistDaoSch implements RegisterDaoInter {

	// mybatis와 db연동을 위한 자동 의존성 주입
	@Setter(onMethod = @__({ @Autowired }))
	SqlSession ss;

	@Override
	public <T> GenericOne<T> selectOne(T cNo) {

		return Util.packingSch(ss.selectList("kr.co.openkitchen.classRegist.scheduleList", cNo));
	}

	@Override
	public <T> void insertDTO(T cNo) {
		ss.insert("kr.co.openkitchen.classRegist.modifyStatusC", cNo);

	}

}

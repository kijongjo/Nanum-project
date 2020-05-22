package kr.co.openkitchen.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.openkitchen.classes.GenericOne;
import kr.co.openkitchen.classes.Util;
import kr.co.openkitchen.dto.ClassRegistDtoL;
import kr.co.openkitchen.dto.ClassRegistDtoR;
import lombok.Setter;

@Repository
public class ClassRegistDaoS implements RegisterDaoInter {
	// mybatis와 db연동을 위한 자동 의존성 주입
	@Setter(onMethod = @__({ @Autowired }))
	SqlSession ss;

	@Override
	public <T> GenericOne<T> selectOne(T tNo) {
		List<ClassRegistDtoL> list = ss.selectList("kr.co.openkitchen.classRegist.leaseList", tNo);

		return Util.packing(list);
	}

	@Override
	public <T> void insertDTO(T dto) {

		//이거 고쳐야됨...
		GenericOne<ClassRegistDtoR> one=(GenericOne<ClassRegistDtoR>)dto;

		ss.insert("kr.co.openkitchen.classRegist.insertrecruit", one.getCrdr());

	}

}

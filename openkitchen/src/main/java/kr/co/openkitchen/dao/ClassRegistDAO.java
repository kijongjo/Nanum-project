package kr.co.openkitchen.dao;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.openkitchen.classes.GenericOne;
import kr.co.openkitchen.classes.Util;
import lombok.Setter;

@Repository
public class ClassRegistDAO implements RegisterDaoInter {

	// mybatis와 db연동을 위한 자동 의존성 주입
		@Setter(onMethod=@__({@Autowired}))
		SqlSession ss;
		
		@Override
		public <T> void insertDTO(T dto) {
		ss.update("kr.co.openkitchen.classRegist.updateDTO", dto);
		}
		
		@Override
		public <T> GenericOne<T> selectOne(T genericOne) {
	    //!!!보완필요 원래는String,Object형태로 보내야만 하는데 Map 타입을 T로하는건 무리가 있음.
		Map<String,T> map= new HashMap<String,T>();
		map.put("tNo",genericOne);
		ss.insert("kr.co.openkitchen.classRegist.insertcNo",map);
		System.out.println("map cNo : "+map.get("cNo"));
		
		return  Util.packing(map.get("cNo"));
		}
		
		
		
		
}

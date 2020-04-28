package kr.co.openkitchen.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import kr.co.openkitchen.classes.GenericOne;
import lombok.Setter;

@Repository
public class TeacherRegistDaoS implements RegisterDaoInter {
	@Setter(onMethod = @__({ @Autowired }))
	SqlSession ss;
 
	@Transactional
	@Override
	public <T> void insertDTO(T dto) {
		System.out.println("dao의insertDTO :    "+dto.toString());

		ss.insert("kr.co.openkitchen.teacherRegist.insertDtoH", dto);
		ss.insert("kr.co.openkitchen.teacherRegist.insertDtoS", dto);

	}
	@Override
	public <T> GenericOne<T> selectOne(T genericOne) {
		//아직 session에 담기는 값이 없어서 안씀
		return null;
	} 
	
}

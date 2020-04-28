package kr.co.openkitchen.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import lombok.Setter;

@Repository
public class TeacherRegistDAO implements RegisterDaoInter {

	@Setter(onMethod = @__({ @Autowired }))
	SqlSession ss;

    @Transactional
	@Override
	public <T> void insertDTO(T dto) {
		
    	System.out.println(dto.toString());
		ss.insert("kr.co.openkitchen.teacherRegist.insertDTO", dto);
	    ss.insert("kr.co.openkitchen.teacherRegist.insertDtoP",dto);	
	 }
    
	

}

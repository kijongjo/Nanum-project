package kr.co.openkitchen.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import kr.co.openkitchen.dto.TeacherRegistDTO;
import lombok.Setter;

@Component
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

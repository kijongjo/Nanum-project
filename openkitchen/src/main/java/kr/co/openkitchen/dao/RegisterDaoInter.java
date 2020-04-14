package kr.co.openkitchen.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import lombok.Setter;

public interface RegisterDaoInter {

    //회원정보를 Teacher Table에 넣어줌  
	public <T> void insertDTO(T dto);
	
}

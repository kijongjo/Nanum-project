package kr.co.openkitchen.dao;

public interface RegisterDaoInter {

    //회원정보를 Teacher Table에 넣어줌  
	public <T> void insertDTO(T dto);

	
}

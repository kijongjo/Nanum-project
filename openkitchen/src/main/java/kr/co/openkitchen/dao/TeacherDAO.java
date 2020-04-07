package kr.co.openkitchen.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.openkitchen.dto.DetailTeacherDTO;
import kr.co.openkitchen.dto.TeacherIndexDTO;
import lombok.Setter;

@Repository
public class TeacherDAO implements TDaoInter {
	// mybatis와 db연동을 위한 자동 의존성 주입
	@Setter(onMethod=@__({@Autowired}))
	SqlSession ss;
	
	@Override
	public List<TeacherIndexDTO> selectFiveT() {
		return ss.selectList("kr.co.openkitchenIndex.recentlyTeacher");
	}
	@Override
	public List<TeacherIndexDTO> selectContentT() {
		return ss.selectList("kr.co.openkitchenIndex.ContentTeacher");
	}
	
	@Override
	public DetailTeacherDTO selectDetailT(int tNo) {
		
		return ss.selectOne("kr.co.openkitchen.teacher.selectDetailT", tNo);
	}
	@Override
	public List<TeacherIndexDTO> moreTeacher(int count) {
		return ss.selectList("kr.co.openkitchenIndex.MoreTeacher", count*8);
	}
	
	
	
	
	
}

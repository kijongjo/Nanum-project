package kr.co.openkitchen.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.openkitchen.dao.TDaoInter;
import kr.co.openkitchen.dto.DetailTeacherDTO;
import kr.co.openkitchen.dto.TeacherIndexDTO;
import lombok.Setter;

@Service
public class TeacherSerevice implements TserviceInter {
	// Dao의 구현객체인 OracleDAO를 사용하기 위한 자동 의존 주입
		@Setter(onMethod = @__({@Autowired}))
		TDaoInter dao;
		
		

		@Override
		public List<TeacherIndexDTO> readFiveT() {
			return dao.selectFiveT();
		}
		
		@Override
		public List<TeacherIndexDTO> mainContentT() {
			return dao.selectContentT();
		}
		
		@Override
		public DetailTeacherDTO readDetailT(int tNo) {
			
			return dao.selectDetailT(tNo);
		}
		
		@Override
		public List<TeacherIndexDTO> moreTeacher(int count) {
			return dao.moreTeacher(count);
		}
}

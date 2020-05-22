package kr.co.openkitchen.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

//Controller 사용처 : 공간,클래스.선생님 신청의 심사에 대한 상태관리 페이지의 요청을 받아오는 controller이다.
@Controller
public class PerAdminController {
	
//perSpaceD 페이지로 보내는 프로그램 공간정보
	@RequestMapping("/perSpaceD")
	public String perSpaceD() {
		
		return "admin/perSpaceD";
	}

	//perSpaceD2 페이지로 보내는 프로그램 공간등록
		@RequestMapping("/perSpaceD2")
		public String perSpaceD2() {
			
			return "admin/perSpaceD2";
		}
		//perSpaceD2 페이지로 보내는 프로그램 공간등록
		@RequestMapping("/perTeacherD")
		public String perTeacherD() {
			
			return "admin/perTeacherD";
		}
		//perSpaceD2 페이지로 보내는 프로그램 공간등록
		@RequestMapping("/perTeacherD2")
		public String perTeacherD2() {
			
			return "admin/perTeacherD2";
		}
}

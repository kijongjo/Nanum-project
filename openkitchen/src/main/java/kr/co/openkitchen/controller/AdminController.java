package kr.co.openkitchen.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class AdminController {
	//adminIndex 페이지 view 전달 program
	@RequestMapping("/in")
	public String adminIndex() {
		
			
		return "admin/adminIndex";
	} 
	
	//memberAdmin 페이지 view 전달 program
	@RequestMapping("/memberAdmin")
	public String memberAdmin() {
		
			
		return "admin/memberAdmin";
	} 
	//perAdmin 페이지 view 전달 program
		@RequestMapping("/perAdmin")
		public String perAdmin() {
			
				
			return "admin/perAdmin";
		} 
    //상태관리 페이지에서 한 행 클릭시 perSpaceD와 perTeacherD 그리고 perClassD로 넘어가는 프로그램 필요함 .
}

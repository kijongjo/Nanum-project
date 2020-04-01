package kr.co.openkitchen.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class UserController {
	@RequestMapping(value = {"mypageIn"})
	public String mypage() {
		return "/mypage/mypageIn";
	}
	
	@RequestMapping(value = {"cookBookD", "cookRefunD", "cookEndD"})
	public String cookIn(@RequestParam("no")String no, Model model) {
		System.out.println(no);
		model.addAttribute("no", no);
		
		return "/mypage/class/cookIn";
	}
	
	@RequestMapping(value = {"teacherBase","teacherSpace"})
	public String teacherBase(@RequestParam("no")String no, Model model) {
		System.out.println(no);
		model.addAttribute("no", no);
		
		return "/mypage/teacher/teacherDiscription";
	}
	
	
	@RequestMapping(value = {"standByClass", "ongoingClass", "completeClass"})
	public String openClassD(@RequestParam("no")String no, Model model) {
		System.out.println(no);
		model.addAttribute("no", no);
		
		return "/mypage/class/openClassD";
	}
	
	@RequestMapping(value = {"standBySpace", "ongoingSpace", "completeSpace"})
	public String openSpaceD(@RequestParam("no")String no, Model model) {
		System.out.println(no);
		model.addAttribute("no", no);
		
		return "/mypage/class/openSpaceD";
	}
	
	@RequestMapping(value = {"message"})
	public String message() {	
		return "/mypage/myInfo/message";
	}
	
	
	@RequestMapping(value = {"alarmD"})
	public String alarmD() {	
		return "/mypage/myInfo/alarmD";
	}
	
	
	@RequestMapping(value = {"wishlistClass", "wishlistTeacher", "wishlistSpace"})
	public String wishlistIn(@RequestParam("no")String no, Model model) {
		System.out.println(no);
		model.addAttribute("no", no);
		
		return "/mypage/wishlist/wishlistIn";
	}
	
	
	
//	@RequestMapping(value = {"standByClass"})
//	public String standByClass(@RequestParam("no")String no) {
//		System.out.println(no);
//		
//		
//		return "/mypage/class/standByClass";
//	}
//	
//	@RequestMapping(value = {"ongoingClass"})
//	public String ongoingClass(@RequestParam("no")String no, Model model) {
//		System.out.println(no);
//		model.addAttribute("no", no);
//		
//		
//		return "/mypage/class/openClassD";
//	}
}

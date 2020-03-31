package kr.co.openkitchen.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class UserController {
	@RequestMapping(value = {"mypageIn"})
	public String mypage() {
		return "/mypage/myInfo/mypageIn";
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
	
	@RequestMapping(value = {"cookBookD", "cookRefunD"})
	public String cookIn(@RequestParam("no")String no, Model model) {
		System.out.println(no);
		model.addAttribute("no", no);
		
		return "/mypage/class/cookIn";
	}
	
}

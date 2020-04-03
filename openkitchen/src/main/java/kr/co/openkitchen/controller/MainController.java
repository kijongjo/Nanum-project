package kr.co.openkitchen.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.openkitchen.service.ServiceInter;
import lombok.Setter;

@Controller
public class MainController {
	
	// ServiceImple를 사용하기 위한 자동 의존 주입
	@Setter(onMethod = @__({@Autowired}))
	ServiceInter si;
	
	
	@RequestMapping(value = { "/", "index" })
	public String home() {
		return "index";
	}

	@GetMapping("classIn")
	public String classIn() {
		return "/class/user/classIn";
	}

	@GetMapping("teacherIn")
	public String teacherIn() {
		return "/teacher/user/teacherIn";
	}

	@GetMapping("spaceIn")
	public String spaceIn() {
		return "space/user/spaceIn";
	}
	
	@GetMapping("test")
	public String test(Model model) {
		
		model.addAttribute("test", si.readAll());
		
		return "test";
	}
}

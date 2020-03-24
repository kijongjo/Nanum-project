package kr.co.openkitchen.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

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
}

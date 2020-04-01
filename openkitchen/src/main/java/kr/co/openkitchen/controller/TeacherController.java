package kr.co.openkitchen.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TeacherController {
	// teacherD view로 가는 프로그램
			@RequestMapping("/teacherD")
			public String teacherD() {

				return "teacher/user/teacherD";
			}
}

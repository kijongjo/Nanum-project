package kr.co.openkitchen.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.openkitchen.service.ServiceInter;
import kr.co.openkitchen.service.TserviceInter;
import lombok.Setter;

@Controller
public class TeacherController {
	
	@Setter(onMethod = @__({ @Autowired }))
	TserviceInter si;
	
	
	// teacherD view로 가는 프로그램
	@RequestMapping("teacherD")
	public String teacherD(@RequestParam("no")int tNo, Model model) {
		System.out.println(tNo);
		model.addAttribute("detailTeacher", si.readDetailT(tNo));
		System.out.println(si.readDetailT(tNo));
		return "teacher/user/teacherD";
	}
	
	@GetMapping("teacherIn")
	public String teacherIn(Model model) {
		model.addAttribute("list",si.readFiveT());
		model.addAttribute("mainContent",si.mainContentT());
		return "teacher/user/teacherIn";
	}
	
}

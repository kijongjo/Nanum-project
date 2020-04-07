package kr.co.openkitchen.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.openkitchen.service.ServiceInter;
import lombok.Setter;

@Controller
public class ClassController {
	@Setter(onMethod = @__({ @Autowired }))
	ServiceInter si;

	@GetMapping("classD")
	public String classD(@RequestParam("no") int cNo, Model model) {
		
		model.addAttribute("detailClass", si.readDetailC(cNo));
		model.addAttribute("detailCSche", si.readDetailCSche(cNo));
		System.out.println(si.readDetailCSche(cNo));
		System.out.println(cNo);
		
		return "class/user/classD";
	}
	
	@GetMapping("classIn")
	public String classIn(Model model) {
		
		model.addAttribute("list",si.readFive());
		model.addAttribute("mainContent",si.mainContentC());
		return "class/user/classIn";
	}
	

	

}

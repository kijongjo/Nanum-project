package kr.co.openkitchen.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.openkitchen.dto.ClassDTO;
import kr.co.openkitchen.dto.ClassIndexDTO;
import kr.co.openkitchen.service.ServiceInter;
import lombok.Setter;

@Controller
public class ClassController {
	@Setter(onMethod = @__({ @Autowired }))
	ServiceInter si;

	// classD view로 가는 프로그램
	@GetMapping("classD")
	public String classD() {

		return "class/user/classD";
	}

	@PostMapping("classD")
	public String classD(@RequestParam("cno") int cno, Model model) {
		System.out.println(cno);
		
		return "class/user/classD";
	}
	
	@GetMapping("classIn")
	public String classIn(Model model) {
		
		model.addAttribute("list",si.readFive());
		model.addAttribute("mainContent",si.mainContentC());
		return "class/user/classIn";
	}
	
	@RequestMapping(value = "/moreC", method = RequestMethod.GET, produces = "application/text; charset=utf8")
	@ResponseBody
	public String moreC(@RequestParam("count") int count) {
		System.out.println("count 테스트 : " + count);
		return "";
	}

}

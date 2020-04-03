package kr.co.openkitchen.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.apache.catalina.core.ApplicationContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.WebApplicationContext;

import kr.co.openkitchen.service.ServiceInter;
import lombok.Setter;

@Controller
public class MainController {
	
	// ServiceImple를 사용하기 위한 자동 의존 주입
	@Setter(onMethod = @__({@Autowired}))
	ServiceInter si;
	
	@Autowired
	ServletContext sc;
	

	@RequestMapping(value = { "/", "index" })
	public String home(Model model) {
		model.addAttribute("manwonClass", si.readManwonC());
		System.out.println(si.readManwonC());
		
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
	
		String str = sc.getInitParameter("globalParam");
		
		
		String[] test = str.split(",");
		
		Map<String, String> map = new HashMap<String, String>();
		
		for (int i = 0; i < test.length; i++) {
			
			map.put("popularKey"+i , test[i]);
		}
		
		System.out.println(map);
		
		return "test";
	}
	
	
	
}

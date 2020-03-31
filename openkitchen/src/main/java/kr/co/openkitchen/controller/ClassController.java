package kr.co.openkitchen.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ClassController {
	// classD view로 가는 프로그램
		@RequestMapping("/classD")
		public String classD() {

			return "class/user/classD";
		}
	
}

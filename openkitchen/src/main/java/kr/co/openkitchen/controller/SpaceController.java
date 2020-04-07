package kr.co.openkitchen.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SpaceController {
	// spaceD view로 가는 프로그램
	@RequestMapping("/spaceD")
	public String classD() {

		return "space/user/spaceD";
	}
}

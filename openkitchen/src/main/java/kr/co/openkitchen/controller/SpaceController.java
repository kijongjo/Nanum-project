package kr.co.openkitchen.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.openkitchen.service.ServiceInter;
import lombok.Setter;

@Controller
public class SpaceController {
	
	@Setter(onMethod = @__({ @Autowired }))
	ServiceInter si;
	
	// spaceD view로 가는 프로그램
	@RequestMapping("/spaceD")
	public String classD() {
		return "space/user/spaceD";
	}
	
	@GetMapping("spaceIn")
	public String spaceIn(Model model) {
		model.addAttribute("list",si.readFiveS());
		return "space/user/spaceIn";
	}
}

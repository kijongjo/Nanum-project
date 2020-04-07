package kr.co.openkitchen.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.openkitchen.service.ServiceInter;
import kr.co.openkitchen.service.SserviceInter;
import lombok.Setter;

@Controller
public class SpaceController {
	
	@Setter(onMethod = @__({ @Autowired }))
	SserviceInter si;
	
	// spaceD view로 가는 프로그램
	@RequestMapping("/spaceD")
	public String classD() {
		return "space/user/spaceD";
	}
	
	@GetMapping("spaceIn")
	public String spaceIn(Model model) {
		model.addAttribute("list",si.readFiveS());
		model.addAttribute("mainContent",si.mainContentS());
		return "space/user/spaceIn";
	}
}

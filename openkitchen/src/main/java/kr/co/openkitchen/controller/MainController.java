package kr.co.openkitchen.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;

import kr.co.openkitchen.dto.MemberDTO;
import kr.co.openkitchen.service.MserviceInter;
import lombok.Setter;

@Controller
public class MainController {

	// ServiceImple를 사용하기 위한 자동 의존 주입
	@Setter(onMethod = @__({ @Autowired }))
	MserviceInter si;

	@Autowired
	ServletContext sc;

	@RequestMapping(value = { "/", "index" })
	public String home(Model model,HttpServletRequest request) {
		
		//세션의 유저 값 가져오기
		
		
//			System.out.println(memberdto.toString());
		
		
	

		// map방법과 list방식을 고민
		// list방식이 코드를 더욱 줄 일수 있을거 같다.

		String str = sc.getInitParameter("globalParam");
		String[] popularKey = str.split(",");

		List<String> popularList = new ArrayList<String>();

		for (int i = 0; i < popularKey.length; i++) {
			popularList.add(popularKey[i]);
		}

		HashMap<String, Object> map = new HashMap<String, Object>();

		map.put("popularList", popularList);

		model.addAttribute("bestClass", si.readBestC(map));
		model.addAttribute("manwonClass", si.readManwonC());
		model.addAttribute("OnlyOneClass", si.readOnlyOneC());		
		model.addAttribute("popularClass", si.readPopularC(map));
		
		// session 
		HttpSession session = request.getSession(false);
		if(session != null) {
			System.out.println("session?:"+session.getAttribute("openkitchen"));
			System.out.println(session);
			if(session.getAttribute("openkitchen") != null) {
				System.out.println("담긴세션:"+session.getAttribute("openkitchen"));
				MemberDTO memberdto = (MemberDTO)session.getAttribute("openkitchen");
				System.out.println(memberdto.getmName());
			}
		
		}
					
		return "index";
		
	}

	@GetMapping("/questions")
	public String questions() {
		return "etc/questions";
	}
	
	@PostMapping("/userWishlist")
	@ResponseBody
	public String userWishlist(@SessionAttribute("memberNo")int mNo,@RequestParam("type")String type, 
			@RequestParam("number")int number, @RequestParam("status")String status) {
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("mNo", mNo);
		map.put("type", type);
		map.put("number", number);
		System.out.println("status : "+status);
		
		int result = 0;
		if(status.equals("insert")) {
			result = si.addWishlist(map);
		} else {
			result = si.deleteWishlist(map);
		}
		
        System.out.println("wishlist result : "+result);
		
		return "test";
	}
	

}

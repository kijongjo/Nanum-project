package kr.co.openkitchen.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.openkitchen.service.CserviceInter;
import kr.co.openkitchen.service.MemberServiceInter;
import lombok.Setter;

@Controller
public class MemberController {
	
	@Setter(onMethod = @__({ @Autowired }))
	MemberServiceInter ms;
	
	@RequestMapping("/login")// 로그인 경로
	public String loginForm() {
		return "login/login";
	}
	
	@GetMapping("/signUp")
	public String siginUpForm() {
		return "login/signUp";
	}
	
	@PostMapping("/siginSuccess")
	public String siginOk(
			@RequestParam("mEmail")String mEmail, @RequestParam("mPwd")String mPwd, @RequestParam("mName")String mName) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("mEmail", mEmail);
		map.put("mPwd", mPwd);
		map.put("mName", mName);
		
		ms.signUp();
		
		
		
		
		return "login/login";
	}
}

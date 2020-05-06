package kr.co.openkitchen.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.openkitchen.dto.MemberDTO;
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
	
	@RequestMapping("/loginOk")
	public String loginOk(HttpSession session, Model model) { 
//		시큐리티에서 로그인된 id 가져오기		
		User user = (User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		user.getUsername();
		
//		가져온 id로 다시 쿼리 해서 유저정보 가져오기
		MemberDTO memberDTO = ms.selectUserData(user.getUsername());

		session.setAttribute("openkitchen", memberDTO);
		Object classNo = session.getAttribute("classNo");
		Object spaceNo = session.getAttribute("spaceNo");
		
		// 클래스 결제 페이지 연관 로직
		if(classNo != null) {
			
			return "redirect:classPayment?no="+classNo;
			
		}
		
		// 공간 결제 페이지 연관 로직
		if(spaceNo != null) {
			
			return "redirect:spaceD?no="+spaceNo;
		}
		
		return "redirect:index";
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
		
		ms.signUp(mEmail, mPwd, mName);
		
		
		
		return "login/login";
	}
}

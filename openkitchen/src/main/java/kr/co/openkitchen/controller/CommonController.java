package kr.co.openkitchen.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.provisioning.JdbcUserDetailsManager;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CommonController {
JdbcUserDetailsManager judm;

User user;	

BCryptPasswordEncoder pe;
//Bcrypt  패스워드 암호화에 특화된 Password Hashing function


	private static final Logger logger = LoggerFactory.getLogger(CommonController.class);
	
	@RequestMapping(value = "/common/customLogin")
	public void login(String error, String logout, Model model) {
		if (error != null) {
			model.addAttribute("error", "로그인 중 에러 발생");
		} else if (logout != null) {
			model.addAttribute("logout", "logout");
		}
	}
	
	@RequestMapping(value = "/common/customLogout")
	public void logoutGet() {
	logger.info("커스텀 로그아웃");
	}
	
}

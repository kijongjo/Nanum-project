package kr.co.openkitchen.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.provisioning.JdbcUserDetailsManager;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import kr.co.openkitchen.dto.PopularClassDTO;
import kr.co.openkitchen.service.MserviceInter;
import lombok.Setter;

@Controller
public class CommonController {
	JdbcUserDetailsManager judm;

	User user;

	BCryptPasswordEncoder pe;
	//Bcrypt  패스워드 암호화에 특화된 Password Hashing function
	
	// 데이터를 가져올 service
	@Setter(onMethod = @__({ @Autowired }))
	MserviceInter si;
	
	@Setter(onMethod = @__({ @Autowired }))
	ServletContext sc;

	private static final Logger logger = LoggerFactory.getLogger(CommonController.class);
	@RequestMapping("/login")
	public String loginForm() {
		return "login/login";
	}
//	@RequestMapping(value = "/common/customLogin")
//	public void login(String error, String logout, Model model) {
//		if (error != null) {
//			model.addAttribute("error", "로그인 중 에러 발생");
//		} else if (logout != null) {
//			model.addAttribute("logout", "logout
//		}
//	}
//
	@GetMapping(value = "/logoutHidden")
	public String logout(HttpServletRequest req, HttpServletResponse resp) {
		return "login/logoutHidden";
	
	}

//	더보기 요청에 대한 program 
	@RequestMapping(value = "/test", method = RequestMethod.GET, produces = "application/text; charset=utf8")
	@ResponseBody
	public String init(@RequestParam int count) {
		
		System.out.println("더보기 시 보여질 갯수:" + count);
		// List를 JSON으로 변환시켜 보낸다. db에서 데이터를 가지고 오게 되면 list도 가지고 온 list로 초기화시켜준다.
		
		String popularInit = sc.getInitParameter("globalParam");
		System.out.println("popularInit : " + popularInit);
		String[] popularKey = popularInit.split(",");

		List<String> popularList = new ArrayList<String>();
		System.out.println("popularKey.length : " + popularKey.length);
		for (int i = 0; i < popularKey.length; i++) {
			popularList.add(popularKey[i]);
		}

		HashMap<String, Object> map = new HashMap<String, Object>();

		map.put("popularList", popularList);
		
		List<PopularClassDTO> list = si.readPopularC(map);
		System.out.println("map : " + map);
		System.out.println(list);
		// json으로 변환 시키기 위한 로직.
		// ajax에는 map이나 list 형식이 없어서 string 으로 변환해준다.
		String str = "";
		ObjectMapper mapper = new ObjectMapper();
		try {
			str = mapper.writeValueAsString(list);
			System.out.println();
			System.out.println("str : " + str);
		} catch (JsonGenerationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (JsonMappingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
//		변환된 list를 return함
		return str;
	}
	@RequestMapping
	public String classIndex() {
		return "";
	}
}

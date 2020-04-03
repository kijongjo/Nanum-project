package kr.co.openkitchen.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.provisioning.JdbcUserDetailsManager;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import kr.co.openkitchen.dto.dtoTest;

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
	
//	더보기 요청에 대한 program 
	@RequestMapping(value="/test", method=RequestMethod.GET,produces = "application/text; charset=utf8")
	@ResponseBody 
	public String init(@RequestParam int count) {
		  
		 System.out.println("더보기 시 보여질 갯수:" +count);
		 //List를 JSON으로 변환시켜 보낸다. db에서 데이터를 가지고 오게 되면 list도 가지고 온 list로 초기화시켜준다.
		 List<dtoTest> list = new ArrayList<dtoTest>();
		 //!!!dto는 지금은 수동으로 일일이 다 적어주었지만 나중에 백엔드까지 연결하게되면dto에 담긴 list만  return으로보내주면 된다.
		 dtoTest dto = new dtoTest();
		 dto.setArea("서울특별시 송파구");
		 dto.setName("침샘 자극, 주꾸미 볶음");
		 dto.setExpert("한식");
		 dto.setImg("/resources/img/testimg/test1.jpg");
		 dto.setShortIntro("매콤~한 자극이 필요한 때, 다양하게 활용가능한 주꾸미양념 배워가세요");
		 dtoTest dto2 = new dtoTest();
		 dto2.setArea("서울특별시 서대문구 모래내로");
		 dto2.setName("이유의계절:봄-레몬파운드케익");
		 dto2.setExpert("파운드케익");
		 dto2.setImg("/resources/img/testimg/test2.jpg");
		 dto2.setShortIntro("상큼함이 입안 가득! 레몬파운드 케익 6개를 예쁘게 포장해가져가세요 :-)");
		 dtoTest dto3 = new dtoTest();
		 dto3.setArea("서울특별시 서대문구 모래내로");
		 dto3.setName("무설탕얼그레이스콘&수제딸기잼");
		 dto3.setExpert("수재잼");
		 dto3.setImg("/resources/img/testimg/test4.jpg");
		 dto3.setShortIntro("설탕과 방부제 없이 향긋한 얼그레이향 가득한 스콘, 그리고 곁들일 제철 딸기잼!");
		 dtoTest dto4 = new dtoTest();
		 dto4.setArea("서울특별시 송파구");
		 dto4.setName("침샘 자극, 주꾸미 볶음");
		 dto4.setExpert("한식");
		 dto4.setImg("/resources/img/testimg/test1.jpg");
		 dto4.setShortIntro("매콤~한 자극이 필요한 때, 다양하게 활용가능한 주꾸미양념 배워가세요");
		 dtoTest dto5 = new dtoTest();
		 dto5.setArea("서울특별시 서대문구 모래내로");
		 dto5.setName("이유의계절:봄-레몬파운드케익");
		 dto5.setExpert("파운드케익");
		 dto5.setImg("/resources/img/testimg/test2.jpg");
		 dto5.setShortIntro("상큼함이 입안 가득! 레몬파운드 케익 6개를 예쁘게 포장해가져가세요 :-)");
		 dtoTest dto6 = new dtoTest();
		 dto6.setArea("서울특별시 서대문구 모래내로");
		 dto6.setName("무설탕얼그레이스콘&수제딸기잼");
		 dto6.setExpert("수재잼");
		 dto6.setImg("/resources/img/testimg/test4.jpg");
		 dto6.setShortIntro("설탕과 방부제 없이 향긋한 얼그레이향 가득한 스콘, 그리고 곁들일 제철 딸기잼!");
		 dtoTest dto7 = new dtoTest();
		 dto7.setArea("서울특별시 송파구");
		 dto7.setName("침샘 자극, 주꾸미 볶음");
		 dto7.setExpert("한식");
		 dto7.setImg("/resources/img/testimg/test1.jpg");
		 dto7.setShortIntro("매콤~한 자극이 필요한 때, 다양하게 활용가능한 주꾸미양념 배워가세요");
		 dtoTest dto8 = new dtoTest();
		 dto8.setArea("서울특별시 서대문구 모래내로");
		 dto8.setName("이유의계절:봄-레몬파운드케익");
		 dto8.setExpert("파운드케익");
		 dto8.setImg("/resources/img/testimg/test2.jpg");
		 dto8.setShortIntro("상큼함이 입안 가득! 레몬파운드 케익 6개를 예쁘게 포장해가져가세요 :-)");
		 list.add(dto);
		 list.add(dto2);
		 list.add(dto3);
		 list.add(dto4);
		 list.add(dto5);
		 list.add(dto6);
		 list.add(dto7);

//		 json으로 변환 시키기 위한 로직.
		 //ajax에는 map이나 list 형식이 없어서 string 으로 변환해준다.
		 String str ="";
		 ObjectMapper mapper= new ObjectMapper();
		 try {
			str=mapper.writeValueAsString(list);
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
}

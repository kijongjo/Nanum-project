package kr.co.openkitchen.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import kr.co.openkitchen.dto.ClassIndexDTO;
import kr.co.openkitchen.service.ServiceInter;

import kr.co.openkitchen.service.CserviceInter;

import lombok.Setter;

@Controller
public class ClassController {
	@Setter(onMethod = @__({ @Autowired }))
	CserviceInter si;

	@GetMapping("classD")
	public String classD(@RequestParam("no") int cNo, Model model) {
		Map<String, String> map1 = new HashMap<String, String>();
		Map<String, String> map2 = new HashMap<String, String>();
		
		String no = Integer.toString(cNo);
		map1.put("cNo", no);
		map1.put("type", "1");
		map2.put("cNo", no);
		map2.put("type", "2");
		model.addAttribute("detailClass", si.readDetailC(cNo));
		model.addAttribute("detailCSche1", si.readDetailCSche(map1));
		model.addAttribute("detailCSche2", si.readDetailCSche(map2));
		
		
		return "class/user/classD";
	}
	
	@GetMapping("classIn")
	public String classIn(Model model) {
		
		model.addAttribute("list",si.readFive());
		model.addAttribute("mainContent",si.mainContentC());
		return "class/user/classIn";
	}
	

	@RequestMapping(value = "/moreC", method = RequestMethod.GET, produces = "application/text; charset=utf8")
	@ResponseBody
	public String moreC(@RequestParam("count") int count) {
		System.out.println("더보기 시 보여질 갯수:" + count);
		List<ClassIndexDTO> list = si.moreClass(count);
		
		
//		 json으로 변환 시키기 위한 로직.
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
//	@GetMapping("spaceBase")
//	public String spaceBase() {
//		return "mypage/space/spaceBase";
//	}
//	@GetMapping("spaceIntro")
//	public String spaceIntro() {
//		return "mypage/space/spaceIntro";
//	}
	
	@GetMapping("classPayment")
	public String classPayment(@RequestParam("no")int recNo, Model model) {
		
		model.addAttribute("paymentC", si.readPaymentC(recNo));
		
		return "class/user/classPayment";
	}

}

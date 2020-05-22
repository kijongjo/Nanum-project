package kr.co.openkitchen.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import kr.co.openkitchen.dto.ClassIndexDTO;
import kr.co.openkitchen.dto.DetailCScheDTO;
import kr.co.openkitchen.dto.MemberDTO;
import kr.co.openkitchen.service.CserviceInter;
import kr.co.openkitchen.service.MemberServiceInter;
import kr.co.openkitchen.service.MserviceInter;
import lombok.Setter;

@Controller
public class ClassController {
	@Setter(onMethod = @__({ @Autowired }))
	CserviceInter csi;
	
	@Setter(onMethod = @__({ @Autowired }))
	MemberServiceInter memsi;
	
	@Setter(onMethod = @__({ @Autowired }))
	MserviceInter msi;
	

	@GetMapping("classD")
	public String classD(@RequestParam("no") int cNo, Model model,
			HttpServletRequest request) {
		Map<String, Object> map = new HashMap<String, Object>();
		Map<String, String> map1 = new HashMap<String, String>();
		Map<String, String> map2 = new HashMap<String, String>();
		
		String no = Integer.toString(cNo);
		map1.put("cNo", no);
		map1.put("type", "1");
		map2.put("cNo", no);
		map2.put("type", "2");
		
		
		
	    List<DetailCScheDTO> list1 = csi.readDetailCSche(map2);
	    SimpleDateFormat fm = new SimpleDateFormat("yyyy-M-d");
	    List<String> list2 = new ArrayList<String>();
	    for(DetailCScheDTO dcsdto : list1) {
	    	System.out.println(fm.format(dcsdto.lLeasedate));
	    	list2.add(fm.format(dcsdto.lLeasedate));
	    }
	    
	    HttpSession session = request.getSession();
	    // 회원번호하고 클래스번호
		if(session.getAttribute("memberNo") == null) {
			model.addAttribute("isAuthenticated", "");	
		} else {
			// 로그인 했을 때 담을 정보
			map.put("mNo", session.getAttribute("memberNo"));
			map.put("cNo", cNo);
//			System.out.println(msi.readWishlist(map)); 
//			System.out.println("mNo : "+session.getAttribute("memberNo")); 
//			System.out.println("cNo : "+cNo);
//			if(msi.readWishlist(map) != 0) {
//				model.addAttribute("checkWishlist", msi.readWishlist(map));
//			} 
			model.addAttribute("isAuthenticated", session.getAttribute("isAuthenticated"));
		}
		
		// 로그인 유무에 상관없이 항상 담겨야 할 데이터
		model.addAttribute("detailClass", csi.readDetailC(cNo));
		model.addAttribute("detailCSche1", csi.readDetailCSche(map1));
		model.addAttribute("detailCSche2", csi.readDetailCSche(map2));
		model.addAttribute("detailCSche3", list2);
		
		
	
		return "class/user/classD";
	}
	
	@GetMapping("classIn")
	public String classIn(Model model) {
		
		model.addAttribute("list", csi.readFive());
		model.addAttribute("mainContent", csi.mainContentC());
		return "class/user/classIn";
	}
	

	@RequestMapping(value = "/moreC", method = RequestMethod.GET, produces = "application/text; charset=utf8")
	@ResponseBody
	public String moreC(@RequestParam("count") int count) {
		System.out.println("더보기 시 보여질 갯수:" + count);
		List<ClassIndexDTO> list = csi.moreClass(count);
		
		
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
	public String classPayment(@RequestParam("no")int recNo, Model model, 
			HttpServletRequest request) {
		
		
		HttpSession session = request.getSession();		
		if(session.getAttribute("openkitchen") == null) {
			
			session.setAttribute("classNo", recNo);
			// 스프링에서 리다이렉트 시키는 방법
			return "redirect:login";
			
		}
		
		Object obj = session.getAttribute("openkitchen");
		MemberDTO mdto = (MemberDTO)obj;
		session.setAttribute("classNo", recNo);
		model.addAttribute("paymentC", csi.readPaymentC(recNo));
		model.addAttribute("paymentM", memsi.readPaymentM(mdto.getmNo()));
		
		return "class/user/classPayment";
	}
	
	@PostMapping("classPayment")
	@ResponseBody
	public String paymentApproval(@SessionAttribute("classNo")int recNo,
			@SessionAttribute("memberNo")int mNo, @ModelAttribute("totalPay")int totalPay,
			@ModelAttribute("payType")String payType, ModelAndView mav) {
		
		System.out.println("classNo : "+recNo);
		System.out.println("memberNo : "+mNo);
		System.out.println("totalPay : "+totalPay);
		System.out.println("payType : "+payType);
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("classNo", recNo);
		map.put("memberNo", mNo);
		map.put("totalPay", totalPay);
		map.put("payType", payType);
				
		int result = csi.addPaymentCData(map);
		System.out.println(result);
		return "test";
	}

}
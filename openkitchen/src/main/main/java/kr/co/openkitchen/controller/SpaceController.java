package kr.co.openkitchen.controller;

import java.io.IOException;
import java.sql.Date;
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
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.mysql.cj.ParseInfo;

import kr.co.openkitchen.dto.AuthorityCheckDTO;
import kr.co.openkitchen.dto.DetailSScheDTO;
import kr.co.openkitchen.dto.MemberDTO;
import kr.co.openkitchen.dto.PaymentSpaceDTO;
import kr.co.openkitchen.dto.SpaceIndexDTO;
import kr.co.openkitchen.service.MemberServiceInter;
import kr.co.openkitchen.service.SserviceInter;
import lombok.Setter;

@Controller
public class SpaceController {
	
	@Setter(onMethod = @__({ @Autowired }))
	SserviceInter ssi;
	
	// 권한 검사를 위한 목적
	@Setter(onMethod = @__({ @Autowired }))
	MemberServiceInter memsi;
	
	// spaceD view로 가는 프로그램
	@RequestMapping("/spaceD")
	public String classD(@RequestParam("no")int sNo, Model model, HttpServletRequest request) {
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("sNo", sNo);
		
		
		List<DetailSScheDTO> list1 = ssi.readDetailSSche(map);
	    SimpleDateFormat fm = new SimpleDateFormat("yyyy-M-d");
	    List<String> list2 = new ArrayList<String>();
	    for(DetailSScheDTO dssdto : list1) {
	    	list2.add(fm.format(dssdto.lLeasedate));
	    }
	    
	    System.out.println(list2);
		
	    // 공간에 대한 기본 정보
		model.addAttribute("detailSpace", ssi.readDetailS(sNo));
		// 공간의 호스트가 등록한 정보를 출력함.
		
		
		// 로그인 했을 때만 일정을 보여줌
		// 그냥 로그인 했을때만 보여줘야 되나..??
		// 아님. 일반회원을 볼 수 없어야 함.
		HttpSession session = request.getSession(); 
		// 로그인 한후에 다시 페이지로 돌아오기 위해 session에 데이터를 저장
		// 쿠키를 사용 할 수 있지 않을까?
		session.setAttribute("spaceNo", sNo);
		
		if(session.getAttribute("openkitchen") != null) {
			MemberDTO mdto = (MemberDTO)session.getAttribute("openkitchen");
			map.put("mNo", mdto.getmNo());
			AuthorityCheckDTO acdto = memsi.readAuthorityCheck(map);
			// 선생님 일 경우에만 동작한다. 선생님과 구분할 데이터를 페이지로 전송해야 한다.
			if (acdto.gettNo() != 0) {
				model.addAttribute("detailSScheDate", list2);
				model.addAttribute("isAuthenticated", "teacher");				
			} else {
				model.addAttribute("isAuthenticated", "user");				
			}
		} 
		
		return "space/user/spaceD";
		
	}
	
	@GetMapping("spaceIn")
	public String spaceIn(Model model) {
		model.addAttribute("list", ssi.readFiveS());
		model.addAttribute("mainContent", ssi.mainContentS());
		return "space/user/spaceIn";
	}
	
	@RequestMapping(value = "/moreS", method = RequestMethod.GET, produces = "application/text; charset=utf8")
	@ResponseBody
	public String moreC(@RequestParam("count") int count) {
		System.out.println("더보기 시 보여질 갯수:" + count);
		List<SpaceIndexDTO> list = ssi.moreSpace(count);
		
//		 json으로 변환 시키기 위한 로직.
		// ajax에는 map이나 list 형식이 없어서 string 으로 변환해준다.
		String str = "";
		ObjectMapper mapper = new ObjectMapper();
		try {
			str = mapper.writeValueAsString(list);
			// System.out.println();
			// System.out.println("str : " + str);
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
	
	// ajax 한글 물음표로 가는 증상? produces에 charset utf8 처리 https://marobiana.tistory.com/112 참조
	@RequestMapping(value = "ajaxSDetailData", method = RequestMethod.POST)
	@ResponseBody
	public List<DetailSScheDTO> ajaxSDetailData(@RequestParam("leaseDate")Date leaseDate, 
			@RequestParam("sNo")int sNo) {
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("sNo", sNo);
		map.put("leaseDate", leaseDate);
		
		List<DetailSScheDTO> test = ssi.readDetailSSche(map);
		// System.out.println(test);

		
		return test;
		
	}
	
	@GetMapping("spacePayment")
	public String spacePayment(String[] no, Model model, 
			HttpServletRequest request) {
	
		Map<String, Object> map = new HashMap<String, Object>();
		
		
		// array나 list를 보낼 경우에는 map으로 감싸되 key의 이름을
		// 정확히 array와 list로 명시해야 된다.
		map.put("array", no);
		
		List<PaymentSpaceDTO> list = ssi.readPaymentS(map);
		// 1. 공간 사이즈가 2개 이상일때만 로직처리를 한다.
		int count = 0;
		int amount = 0;
		
		for(PaymentSpaceDTO psdto : list) {
			count++;
			System.out.println("인원수 : "+psdto.getsCapacity());
			if(psdto.getsCapacity() <= 6) {
				amount = 80000;
			} else if(psdto.getsCapacity() >= 7) {
				amount = 110000;
			}
		}
			
		model.addAttribute("paymentAmount",amount*count);
		model.addAttribute("paymentS", ssi.readPaymentS(map));
		
		
		HttpSession session = request.getSession();
		if(session != null) {
			MemberDTO mdto = (MemberDTO)session.getAttribute("openkitchen");
			model.addAttribute("paymentM", memsi.readPaymentM(mdto.getmNo()));
		}
		
		session.setAttribute("leaseNo", no);
		
		return "space/user/spacePayment";
	}
	
	@PostMapping("spacePayment")
	@ResponseBody
	public String paymentApproval(@SessionAttribute("leaseNo")int[] lNo,
			@SessionAttribute("memberNo")int mNo, @ModelAttribute("totalPay")int totalPay,
			@ModelAttribute("payType")String payType, ModelAndView mav) {
		
		System.out.println("leaseNo : "+lNo[0]);
		System.out.println("memberNo : "+mNo);
		System.out.println("totalPay : "+totalPay);
		System.out.println("payType : "+payType);
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("leaseNo", lNo[0]);
		map.put("memberNo", mNo);
		map.put("totalPay", totalPay);
		map.put("payType", payType);
				
		int result = ssi.addPaymentSData(map);
		System.out.println(result);
		
		
		return "test";
	}
	
	
	
	
}

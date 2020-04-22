package kr.co.openkitchen.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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

import kr.co.openkitchen.dto.MemberDTO;
import kr.co.openkitchen.dto.SpaceIndexDTO;
import kr.co.openkitchen.service.ServiceInter;
import kr.co.openkitchen.service.SserviceInter;
import lombok.Setter;

@Controller
public class SpaceController {
	
	@Setter(onMethod = @__({ @Autowired }))
	SserviceInter si;
	
	// spaceD view로 가는 프로그램
	@RequestMapping("/spaceD")
	public String classD(@RequestParam("no")int sNo, Model model) {
		
		model.addAttribute("detailSpace", si.readDetailS(sNo));
		System.out.println(si.readDetailS(sNo));
		
		return "space/user/spaceD";
	}
	
	@GetMapping("spaceIn")
	public String spaceIn(Model model) {
		model.addAttribute("list",si.readFiveS());
		model.addAttribute("mainContent",si.mainContentS());
		return "space/user/spaceIn";
	}
	
	@RequestMapping(value = "/moreS", method = RequestMethod.GET, produces = "application/text; charset=utf8")
	@ResponseBody
	public String moreC(@RequestParam("count") int count) {
		System.out.println("더보기 시 보여질 갯수:" + count);
		List<SpaceIndexDTO> list = si.moreSpace(count);
		
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
	
	@GetMapping("spacePayment")
	public String spacePayment(@RequestParam("no")int recNo, Model model, 
			HttpServletRequest request) {
		
		
//		HttpSession session = request.getSession();		
//		if(session.getAttribute("openkitchen") == null) {
//			
//			session.setAttribute("classNo", recNo);
//			// 스프링에서 리다이렉트 시키는 방법
//			return "redirect:login";
//			
//		}
		
//		Object obj = session.getAttribute("openkitchen");
//		MemberDTO mdto = (MemberDTO)obj;
//		
//		
//		model.addAttribute("paymentC", csi.readPaymentC(recNo));
//		model.addAttribute("paymentM", memsi.readPaymentM(mdto.getmNo()));
		
		return "space/user/spacePayment";
	}
	
}

package kr.co.openkitchen.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.openkitchen.dto.MemberDTO;
import kr.co.openkitchen.dto.MypageDTO;
import kr.co.openkitchen.service.MypageServiceInter;

@Controller
@RequestMapping("/mypage")
public class UserController {


	@Resource(name = "mypageServiceImple")
	MypageServiceInter mypageService;

	@RequestMapping(value = { "/users/{mNo}" })
	public String mypage(HttpServletRequest request, Model model) {

		HttpSession session = request.getSession();

		if (session.getAttribute("openkitchen") != null) {
			MemberDTO mdto = (MemberDTO) session.getAttribute("openkitchen");
			MypageDTO mydto = mypageService.mypageInfo(mdto.getmNo());
			model.addAttribute("mydto", mydto);
			return "/mypage/mypageIn";
		} else {
			return "redirect:/login/login";
		}
	}

	@RequestMapping(value = { "standBySpace", "ongoingSpace", "completeSpace" })
	public String openSpaceD(@RequestParam("no") String no, Model model) {
     
		model.addAttribute("no", no);

		return "/mypage/class/openSpaceD";
	}

	@RequestMapping(value = { "message" })
	public String message() {
		return "/mypage/myInfo/message";
	}

	@RequestMapping(value = { "alarmD" })
	public String alarmD() {
		return "/mypage/myInfo/alarmD";
	}

	@RequestMapping(value = { "/users/{mNo}/wishlistClass", "/users/{mNo}/wishlistTeacher", "/users/{mNo}/wishlistSpace" })
	public String wishlistIn(@RequestParam("no") String no, Model model) {
	
		model.addAttribute("no", no);

		return "/mypage/wishlist/wishlistIn";
	}

	// 선생님 등록 페이지 시작

	@RequestMapping(value = { "/users/{mNo}/teacherBase/{no}", "/users/{mNo}/teacherSpace/{no}" })
	public String teacherBase(@PathVariable("no") String no, Model model) {

		model.addAttribute("no", no);

		return "/mypage/teacher/teacherDiscription";
	}



	@RequestMapping(value = "/users/{mNo}/registTeacher", method = RequestMethod.POST)
	public String registTeacher() {
		// 등록하는 Service 실행하기

		return "mypage/in";
	}
	// 선생님 등록 페이지 End

	// 클래스 등록 페이지 시작

	@RequestMapping(value = { "/users/{mNo}/classBases/{no}", "/users/{mNo}/classSchedules/{no}", "/users/{mNo}/classSpaces/{no}" })
	public String classBase(@PathVariable("no") String no, Model model) {
 
		model.addAttribute("no", no);

		return "mypage/class/applyClass";
	}

	
//예약  클래스 정보

	@RequestMapping(value = { "/users/{mNo}/cookBooks/{no}", "/users/{mNo}/cookRefunds/{no}", "/users/{mNo}/cookEnds/{no}" })
	public String cookIn(@PathVariable("no") String no, Model model) {
		
		model.addAttribute("no", no);

		return "/mypage/class/cookIn";
	}



	// 개설된 클래스 상태 정보

	@RequestMapping(value = { "/users/{mNo}/standByClasses/{no}", "/users/{mNo}/ongoingClasses/{no}", "/users/{mNo}/completeClasses/{no}" })
	public String openClassD(@PathVariable("no") String no, Model model) {

		model.addAttribute("no", no);

		return "/mypage/class/openClassD";
	}


	// 개설된 클래스 상태 정보 종료

	// 테스트용 /////////////////////////////////////////////////
	@RequestMapping(value = "spaceBase", method = RequestMethod.GET)
	public String spaceBase() {
		return "mypage/space/spaceBase";
	}

	@RequestMapping(value = "spaceIntro", method = RequestMethod.GET)
	public String spaceIntro() {
		return "mypage/space/spaceIntro";
	}
	
}

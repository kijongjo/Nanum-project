package kr.co.openkitchen.controller;

import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import kr.co.openkitchen.classes.MypageCookInterType;
import kr.co.openkitchen.classes.MypageOpenCType;
import kr.co.openkitchen.classes.RegistServiceType;
import kr.co.openkitchen.classes.RegistServiceTypeF;
import kr.co.openkitchen.classes.S3ClientFactory;
import kr.co.openkitchen.classes.Util;
import kr.co.openkitchen.dto.ClassRegistDTO;
import kr.co.openkitchen.dto.ClassRegistDtoL;
import kr.co.openkitchen.dto.ClassRegistDtoR;
import kr.co.openkitchen.dto.ClassRegistDtoSch;
import kr.co.openkitchen.dto.CompleteClassDTO;
import kr.co.openkitchen.dto.CookBookDTO;
import kr.co.openkitchen.dto.CookRefundDTO;
import kr.co.openkitchen.dto.MemberDTO;
import kr.co.openkitchen.dto.MypageDTO;
import kr.co.openkitchen.dto.OngoingClassDTO;
import kr.co.openkitchen.dto.StandByClassDTO;
import kr.co.openkitchen.dto.TeacherRegistDTO;
import kr.co.openkitchen.dto.TeacherRegistDtoS;
import kr.co.openkitchen.service.MypageCookInter;
import kr.co.openkitchen.service.MypageCookOrder;
import kr.co.openkitchen.service.MypageOpenClassInter;
import kr.co.openkitchen.service.MypageOpenClassOrder;
import kr.co.openkitchen.service.MypageServiceInter;
import kr.co.openkitchen.service.RegistOrderService;
import kr.co.openkitchen.service.RegistOrderServiceF;
import kr.co.openkitchen.service.RegistServiceInter;
import kr.co.openkitchen.service.RegistServiceInterF;

@Controller
@RequestMapping("/mypage")
@SessionAttributes("cNo")
public class UserController {
	// 같은 Interface를 두번 쓴다는 것은 무슨 법칙에 깨진다고 들엇는데 여튼 보완 필요 <-해결
	// Design Pattern
	@Autowired
	RegistOrderService registOrderService;
	RegistServiceInter registService;

	@Autowired
	RegistOrderServiceF registOrderServiceF;
	RegistServiceInterF registServiceF;

	@Autowired
	MypageCookOrder mypageCookOrder;
	MypageCookInter mypageCook;

	@Autowired
	MypageOpenClassOrder mypageOpenClassOrder;
	MypageOpenClassInter mypageOpenClass;

	@Resource(name = "mypageServiceImple")
	MypageServiceInter mypageService;

	@RequestMapping(value = { "in" })
	public String mypage(HttpServletRequest request, Model model) {

		HttpSession session = request.getSession();

		if (session.getAttribute("openkitchen") != null) {
			MemberDTO mdto = (MemberDTO) session.getAttribute("openkitchen");
			MypageDTO mydto = mypageService.mypageInfo(mdto.getmNo());
			model.addAttribute("mydto", mydto);
			return "/mypage/mypageIn";
		} else {
			return "/login/login";
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

	@RequestMapping(value = { "wishlistClass", "wishlistTeacher", "wishlistSpace" })
	public String wishlistIn(@RequestParam("no") String no, Model model) {

		model.addAttribute("no", no);

		return "/mypage/wishlist/wishlistIn";
	}

	// 선생님 등록 페이지 시작

	@RequestMapping(value = { "teacherBase", "teacherSpace" })
	public String teacherBase(@RequestParam("no") String no, Model model) {

		model.addAttribute("no", no);

		return "/mypage/teacher/teacherDiscription";
	}

	// 선생님 [기본정보]등록 요청
	@RequestMapping(value = "teacherBaseInfo", method = RequestMethod.POST)
	public String teacherBaseInfo(@ModelAttribute TeacherRegistDTO dto, MultipartHttpServletRequest request) {

		// FactoryPattern Service Instance
		registServiceF = registOrderServiceF.receiveOrderF(RegistServiceTypeF.REGISTTEACHERIMPLE);
		// 파일 저장되는 경로
		String filePath;
		// 상세 썸네일
		String tDetailsumnail = "";
		// 사진 번호 부여
		int count = 1;
		// 선생님번호=회원번호
		int tNo = dto.getmNo();
		// 넘어온 파일 리스트
		Iterator<String> fileList = request.getFileNames();

		// 넘어온 파일들의 정체를 밝히는 while문
		while (fileList.hasNext()) {
			String fileName = fileList.next();
			// blob 또는 기존 File 형식으로 보내온 파일을 MultiPart로 변환
			MultipartFile mFile = request.getFile(fileName);
			filePath = registServiceF.createImgNameNpath(fileName, count, tNo);
			registServiceF.registerFileToS3(filePath, mFile);

			// 파일 종류 구분 후 저장
			if (fileName.equals("DS-TYPE1")) {
				tDetailsumnail += registServiceF.namingDS(fileName, count, tNo) + ",";
				count++;
			} else if (fileName.equals("MS")) {
				String tMainsumnail = registServiceF.namingMS(fileName, tNo);
				dto.settMainsumnail(tMainsumnail);
			} else if (fileName.equals("proRegImg")) {
				dto.setProRegimg(registServiceF.namingBK(fileName, tNo));
			} else if (fileName.equals("proAccountIng")) {
				dto.setProAccounting(registServiceF.namingBK(fileName, tNo));
			} // 파일 종류 구분 end

		} // while end

		// 데이터 유효성 판단
		if (tDetailsumnail.length() != 0)
			// 문자열의 마지막 콤마 제거
			tDetailsumnail = tDetailsumnail.substring(0, tDetailsumnail.length() - 1);

		if (tDetailsumnail != "") {
			dto.settDetailsumnail(tDetailsumnail);
		} // 데이터 유효성 판단 end

		dto.settNo(tNo);
		// proceo=proname
		dto.setProCeo(dto.getProName());

		// DB insert Service
		registServiceF.insertDTO(dto);

		return "mypage/teacher/teacherBase";
	}

	// 선생님 [공간]등록 요청
	@RequestMapping(value = "teacherSpaceInfo", method = RequestMethod.POST)
	public String teacherSpaceInfo(@ModelAttribute TeacherRegistDtoS dto, MultipartHttpServletRequest request) {
		// FactoryPattern Service Instance
		registServiceF = registOrderServiceF.receiveOrderF(RegistServiceTypeF.REGISTTEACHERIMPLES);
		// 파일 저장되는 경로
		String filePath;
		// 상세 썸네일
		String sDetailsumnail = "";
		// 사진 끝번호
		int count = 1;
		int hNo = dto.gethNo();
		// form data에 저장된 name들을 뽑아낸다.
		Iterator<String> fileList = request.getFileNames();

		while (fileList.hasNext()) {
			String fileName = fileList.next();
			// blob 또는 기존 형식으로 보내온 파일을 변환시킴
			MultipartFile mFile = request.getFile(fileName);
			filePath = registServiceF.createImgNameNpath(fileName, count, hNo);
			registServiceF.registerFileToS3(filePath, mFile);

			// 파일 종류 구분 후 저장
			if (fileName.equals("S-DS-TYPE1")) {
				sDetailsumnail += registServiceF.namingDS(fileName, count, hNo) + ",";
				count++;
			} else if (fileName.equals("S-MS")) {
				// sumnail
				String sMainsumnail = registServiceF.namingMS(fileName, hNo);
				dto.setsMainsumnail(sMainsumnail);
			} else {
				sDetailsumnail += registServiceF.namingDS(fileName, count, hNo) + ",";
				count++;
			} // 파일 종류 구분 end
		} // while end

		// 데이터 유효성 판단
		if (sDetailsumnail.length() != 0)
			// 문자열의 마지막 콤마 지우기
			sDetailsumnail = sDetailsumnail.substring(0, sDetailsumnail.length() - 1);
		if (sDetailsumnail != "") {
			dto.setsDetailsumnail(sDetailsumnail);
		} // 데이터 유효성 판단 end

		registServiceF.insertDTO(dto);

		return "mypage/teacher/teacherBase";
	}

	@RequestMapping(value = "registTeacher", method = RequestMethod.POST)
	public String registTeacher() {
		// 등록하는 Service 실행하기

		return "mypage/in";
	}
	// 선생님 등록 페이지 End

	// 클래스 등록 페이지 시작

	@RequestMapping(value = { "classBase", "classSchedule", "classSpace" })
	public String classBase(@RequestParam("no") String no, Model model) {

		model.addAttribute("no", no);

		return "mypage/class/applyClass";
	}

	// 클래스 등록시 [예약한 공간 정보] 리스트 요청
	@RequestMapping(value = { "spaceBookList" }, produces = "application/text; charset=utf8")
	@ResponseBody
	public String spaceBookList(HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		// JacksonLibrary 사용
		String str = "";
		ObjectMapper mapper = new ObjectMapper();
		try {
			str = mapper.writeValueAsString("noValue");
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if (session.getAttribute("openkitchen") != null) {
			MemberDTO mdto = (MemberDTO) session.getAttribute("openkitchen");
			// FactoryPattern Service Instance
			registService = registOrderService.receiveOrder(RegistServiceType.REGISTCLASSIMPLES);
			// 선생님 번호= 회원번호
			int tNo = mdto.getmNo();
			List<ClassRegistDtoL> sumnailList = registService.selectOne(tNo).getCrdl();
			//aws s3
			S3ClientFactory s3client = new S3ClientFactory();

			//request url from s3
			for (int i = 0; i < sumnailList.size(); i++) {
				sumnailList.get(i).setsMainsumnail(s3client.geturl(sumnailList.get(i).getsMainsumnail()));
			}
			
             //데이터 json 변환
			if (sumnailList.size() != 0) {
				try {
					str = mapper.writeValueAsString(sumnailList);
				} catch (JsonProcessingException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}//list end
		}//session end 
		return str;
	}

	// 클래스 [기본정보] 등록 요청
	@RequestMapping(value = "classBaseInfo", method = RequestMethod.POST)
	public String classBaseInfo(@ModelAttribute ClassRegistDTO dto, MultipartHttpServletRequest request) {
		// FactoryPattern Service Instance
		registServiceF = registOrderServiceF.receiveOrderF(RegistServiceTypeF.REGISTCLASSIMPLE);
		// 파일 저장되는 경로
		String filePath;
		// 상세 썸네일
		String cDetailsumnail = "";
		// 사진 번호
		int count = 1;
		int tNo = dto.gettNo();
		int cNo = registServiceF.<Integer>selectOne(tNo).getT();
		// form data에 저장된 fileList
		Iterator<String> fileList = request.getFileNames();

		while (fileList.hasNext()) {
			String fileName = fileList.next();
			// blob 또는 기존 형식으로 보내온 파일을 변환
			MultipartFile mFile = request.getFile(fileName);
			// 이미지 저장 시킬 위치 + 파일명
			filePath = registServiceF.createImgNameNpath(fileName, count, cNo);
			registServiceF.registerFileToS3(filePath, mFile);

			// 파일 종류 구분
			if (fileName.equals("C-DS-TYPE1")) {
				cDetailsumnail += registServiceF.namingDS(fileName, count, cNo) + ",";
				count++;
			} else if (fileName.equals("C-MS")) {
				String cMainsumnail = registServiceF.namingMS(fileName, cNo);
				dto.setcMainsumnail(cMainsumnail);
			} else {
				cDetailsumnail += registServiceF.namingDS(fileName, count, cNo) + ",";
				count++;
			} // 파일 종류 구분 end
		} // while end

		// 데이터 유효성 검사
		if (cDetailsumnail.length() != 0)
			// 문자열의 마지막 콤마 지우기
			cDetailsumnail = cDetailsumnail.substring(0, cDetailsumnail.length() - 1);
		if (cDetailsumnail != "") {
			dto.setcDetailsumnail(cDetailsumnail);
		} // 데이터 유효성 검사 end

		registServiceF.insertDTO(dto);

		return "mypage/teacher/teacherBase";
	}

	// 클래스 [공간정보] 등록시 필요한 파일을 등록하는 프로그램
	@RequestMapping(value = "classSpaceRegist", method = RequestMethod.POST)
	@ResponseBody
	public String classSpaceRegist(@RequestBody List<ClassRegistDtoR> rentalNoList) {
		// FactoryPattern Service Instance
		registService = registOrderService.receiveOrder(RegistServiceType.REGISTCLASSIMPLES);
		// JacksonLibrary
		String str = "";
		ObjectMapper mapper = new ObjectMapper();
		
		if (rentalNoList.get(0).getcNo() != 0) {
			registService.insertDTO(Util.packingR(rentalNoList));
			try {
				str = mapper.writeValueAsString("regist");
			} catch (JsonProcessingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else {
			try {
				str = mapper.writeValueAsString("noregist");
			} catch (JsonProcessingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}//if end
		return str;
	}

	// 클래스 등록시 [스케쥴 확인] 요청
	@RequestMapping(value = "totalScheduleList", method = RequestMethod.POST, produces = "application/text; charset=utf8")
	@ResponseBody
	public String TotalScheduleList(HttpServletRequest request) {
        //변수선언
		HttpSession session = request.getSession();
		// JacksonLibrary
		String str = "";
		ObjectMapper mapper = new ObjectMapper();
		try {
			str = mapper.writeValueAsString("noValue");
		} catch (JsonProcessingException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
        //데이터 서비스단 처리
		if (session.getAttribute("cNo") != null) {
			// FactoryPattern Service Instance
			registService = registOrderService.receiveOrder(RegistServiceType.REGISTCLASSIMPLESCH);
			int cNo = Integer.parseInt((String) session.getAttribute("cNo"));
			List<ClassRegistDtoSch> scheduleList = registService.selectOne(cNo).getCrdsch();
		
			//데이터 유효성 검사
			if (scheduleList.size() != 0) {
				try {
					str = mapper.writeValueAsString(scheduleList);
				} catch (JsonProcessingException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			} // if end
		}
		return str;
	}

	// 클래스 등록 [신청완료] 요청
	@RequestMapping(value = "completeSch", method = RequestMethod.POST)
	@ResponseBody
	public String completeSch(HttpServletRequest request) {

		HttpSession session = request.getSession();
		// JacksonLibrary 사용
		String str = "";
		ObjectMapper mapper = new ObjectMapper();
		try {
			str = mapper.writeValueAsString("noValue");
		} catch (JsonProcessingException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		if (session.getAttribute("mNo") != null) {
			// FactoryPattern Service Instance
			registService = registOrderService.receiveOrder(RegistServiceType.REGISTCLASSIMPLESCH);
			int cNo = Integer.parseInt((String) session.getAttribute("mNo"));
			registService.insertDTO(cNo);

			try {
				str = mapper.writeValueAsString("complete");
			} catch (JsonProcessingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
		return str;
	}

//클래스 등록 End

//예약  클래스 정보

	@RequestMapping(value = { "cookBookD", "cookRefundD", "cookEndD" })
	public String cookIn(@RequestParam("no") String no, Model model) {

		model.addAttribute("no", no);

		return "/mypage/class/cookIn";
	}

	// [예약한 클래스 정보] 요청
	@RequestMapping(value = { "cookBookList" }, produces = "application/text; charset=utf8")
	@ResponseBody
	public String cookBookList(HttpServletRequest request) {
        
		//변수 선언
		HttpSession session = request.getSession();
		// JacksonLibrary
		String str = "";
		ObjectMapper mapper = new ObjectMapper();
		try {
			str = mapper.writeValueAsString("noValue");
		} catch (JsonProcessingException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
        //데이터 Service단 처리 
		if (session.getAttribute("openkitchen") != null) {
			// FactoryPattern Service Instance
			mypageCook = mypageCookOrder.receiveOrder(MypageCookInterType.MYPAGECOOKBOOK);
			MemberDTO mdto = (MemberDTO) session.getAttribute("openkitchen");
			int tNo = mdto.getmNo();
			S3ClientFactory s3client = new S3ClientFactory();
			List<CookBookDTO> bookingList = mypageCook.selectOne(tNo).getCbd();
			
			// request url form s3
			for (int i = 0; i < bookingList.size(); i++) {
				bookingList.get(i).setcMainsumnail(s3client.geturl(bookingList.get(i).getcMainsumnail()));
			} // for end
            
			//데이터유효성 검사
			if (bookingList.size() != 0) {
				try {
					str = mapper.writeValueAsString(bookingList);
				} catch (JsonProcessingException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			} // if문 end
		} // session end
		return str;
	}

	// 클래스 [예약취소정보] 요청
	@RequestMapping(value = { "cookRefundList" }, produces = "application/text; charset=utf8")
	@ResponseBody
	public String cookRefundList(HttpServletRequest request) {

		HttpSession session = request.getSession();
		// JacksonLibrary
		String str = "";
		ObjectMapper mapper = new ObjectMapper();
		try {
			str=mapper.writeValueAsString("noValue");
		} catch (JsonProcessingException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		if (session.getAttribute("openkitchen") != null) {
			// FactoryPattern Service Instance
			mypageCook = mypageCookOrder.receiveOrder(MypageCookInterType.MYPAGECOOKREFUND);
			MemberDTO mdto = (MemberDTO) session.getAttribute("openkitchen");
			int tNo = mdto.getmNo();
			List<CookRefundDTO> refundList = mypageCook.selectOne(tNo).getCrd();
			//aws s3
			S3ClientFactory s3client = new S3ClientFactory();
              
			//request url form s3
			for (int i = 0; i < refundList.size(); i++) {
				refundList.get(i).setcMainsumnail(s3client.geturl(refundList.get(i).getcMainsumnail()));
			} // for end
			
            //데이터 json 변환
			if (refundList.size() != 0) {
				try {
					str = mapper.writeValueAsString(refundList);
				} catch (JsonProcessingException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}//list end 
		} //session end
		return str;
	}

	// 클래스 [예약종료 정보] 요청
	@RequestMapping(value = { "cookEndList" }, produces = "application/text; charset=utf8")
	@ResponseBody
	public String cookEndList(HttpServletRequest request) {

		HttpSession session = request.getSession();
		// JacksonLibrary
		String str = "";
		ObjectMapper mapper = new ObjectMapper();
		try {
			str=mapper.writeValueAsString("noValue");
		} catch (JsonProcessingException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		if (session.getAttribute("openkitchen") != null) {
			// FactoryPattern Service Instance
			mypageCook = mypageCookOrder.receiveOrder(MypageCookInterType.MYPAGECOOKEND);
			MemberDTO mdto = (MemberDTO) session.getAttribute("openkitchen");
			int tNo = mdto.getmNo();
			List<CookRefundDTO> endList = mypageCook.selectOne(tNo).getCrd();
			//aws s3
			S3ClientFactory s3client = new S3ClientFactory();

			// request url from s3
			for (int i = 0; i < endList.size(); i++) {
				endList.get(i).setcMainsumnail(s3client.geturl(endList.get(i).getcMainsumnail()));
			} // for end
			
            //데이터 json 변환
			if (endList.size() != 0) {
				try {
					str = mapper.writeValueAsString(endList);
				} catch (JsonProcessingException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}//list end 
		} //session end
		return str;
	}

	// 예약 클래스 정보 end

	// 개설된 클래스 상태 정보

	@RequestMapping(value = { "standByClass", "ongoingClass", "completeClass" })
	public String openClassD(@RequestParam("no") String no, Model model) {

		model.addAttribute("no", no);

		return "/mypage/class/openClassD";
	}

	// 신청 클래스 정보를 가지고 온다.
	@RequestMapping(value = { "standByList" }, produces = "application/text; charset=utf8")
	@ResponseBody
	public String standByList(HttpServletRequest request) {

		HttpSession session = request.getSession();
		// JacksonLibrary
		String str = "";
		ObjectMapper mapper = new ObjectMapper();
		try {
			str=mapper.writeValueAsString("noValue");
		} catch (JsonProcessingException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		if (session.getAttribute("openkitchen") != null) {
			// FactoryPattern Service Instance
			mypageOpenClass = mypageOpenClassOrder.receiveOrder(MypageOpenCType.MYPAGESTANDBYCLASS);
			MemberDTO mdto = (MemberDTO) session.getAttribute("openkitchen");
			int tNo = mdto.getmNo();
			List<StandByClassDTO> standByList = mypageOpenClass.selectOne(tNo).getSbcd();
			//aws s3
			S3ClientFactory s3client = new S3ClientFactory();
           
			//request url from s3
			for (int i = 0; i < standByList.size(); i++) {
				standByList.get(i).setcMainsumnail(s3client.geturl(standByList.get(i).getcMainsumnail()));
			} // for end
            
			//데이터 json 변환
			if (standByList.size() != 0) {
				try {
					str = mapper.writeValueAsString(standByList);
				} catch (JsonProcessingException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			} //list end
		}//session end
		return str;
	}

	// 진행중 클래스 정보를 가지고 온다.
	@RequestMapping(value = { "ongoingClassList" }, produces = "application/text; charset=utf8")
	@ResponseBody
	public String OngoingList(HttpServletRequest request) {

		HttpSession session = request.getSession();
		// JacksonLibrary
		String str = "";
		ObjectMapper mapper = new ObjectMapper();
		try {
			str=mapper.writeValueAsString("noValue");
		} catch (JsonProcessingException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		if (session.getAttribute("openkitchen") != null) {
			// FactoryPattern Service Instance
			mypageOpenClass = mypageOpenClassOrder.receiveOrder(MypageOpenCType.MYPAGEONGOINGCLASS);
			MemberDTO mdto = (MemberDTO) session.getAttribute("openkitchen");
			int tNo = mdto.getmNo();
			List<OngoingClassDTO> ongoingList = mypageOpenClass.selectOne(tNo).getOcd();
			//aws s3
			S3ClientFactory s3client = new S3ClientFactory();
			
			//request url from s3
			for (int i = 0; i < ongoingList.size(); i++) {
				ongoingList.get(i).setcMainsumnail(s3client.geturl(ongoingList.get(i).getcMainsumnail()));
			} // for end
			
           //데이터 json 변환
			if (ongoingList.size() != 0) {
				try {
					str = mapper.writeValueAsString(ongoingList);
				} catch (JsonProcessingException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}//list end 
		} //session end
		return str;
	}

	// 종료된 클래스 정보를 가지고 온다.
	@RequestMapping(value = { "completeClassList" }, produces = "application/text; charset=utf8")
	@ResponseBody
	public String CompleteList(HttpServletRequest request) {

		HttpSession session = request.getSession();
		// JacksonLibrary
		String str = "";
		ObjectMapper mapper = new ObjectMapper();
		try {
			str=mapper.writeValueAsString("noValue");
		} catch (JsonProcessingException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		if (session.getAttribute("openkitchen") != null) {
			// FactoryPattern Service Instance
			MemberDTO mdto = (MemberDTO) session.getAttribute("openkitchen");
			int tNo = mdto.getmNo();
			mypageOpenClass = mypageOpenClassOrder.receiveOrder(MypageOpenCType.MYPAGECOMPLETECLASS);
			List<CompleteClassDTO> completeList = mypageOpenClass.selectOne(tNo).getCcd();
			//aws s3
			S3ClientFactory s3client = new S3ClientFactory();
 
			//request url from s3
			for (int i = 0; i < completeList.size(); i++) {
				completeList.get(i).setcMainsumnail(s3client.geturl(completeList.get(i).getcMainsumnail()));
			} // for end
           
			//데이터 json 변환
			if (completeList.size() != 0) {
				try {
					str = mapper.writeValueAsString(completeList);
				} catch (JsonProcessingException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}//list end 
		}//session end 
		return str;
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

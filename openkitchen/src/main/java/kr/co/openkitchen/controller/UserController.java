package kr.co.openkitchen.controller;

import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
import kr.co.openkitchen.service.MypageOpenClassInter;
import kr.co.openkitchen.service.MypageServiceInter;
import kr.co.openkitchen.service.RegistServiceInter;
import kr.co.openkitchen.service.RegistServiceInterF;

@Controller
@RequestMapping("/mypage")
@SessionAttributes("cNo")
public class UserController {

	// 같은 Interface를 두번 쓴다는 것은 무슨 법칙에 깨진다고 들엇는데 여튼 보완이 필요함.

	@Resource(name = "registTeacherImple")
	RegistServiceInterF regService;

	@Resource(name = "registTeacherImpleS")
	RegistServiceInterF regServiceS;

	@Resource(name = "registClassImple")
	RegistServiceInterF regServiceC;

	@Resource(name = "registClassImpleS")
	RegistServiceInter regServiceCS;

	@Resource(name = "registClassImpleSch")
	RegistServiceInter regServicecSch;

	@Resource(name = "mypageServiceImple")
	MypageServiceInter mypageService;

	@Resource(name = "mypageCookBook")
	MypageCookInter mypageCookBook;

	@Resource(name = "mypageCookRefund")
	MypageCookInter mypageCookRefund;

	@Resource(name = "mypageCookEnd")
	MypageCookInter mypageCookEnd;

	@Resource(name = "mypageStandByClass")
	MypageOpenClassInter mypageStandByClass;
	
	@Resource(name = "mypageOngoingClass")
	MypageOpenClassInter mypageOngoingClass;

	@Resource(name = "mypageCompleteClass")
	MypageOpenClassInter mypageCompleteClass;
	
	@RequestMapping(value = { "in" })
	public String mypage(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		if (session.getAttribute("openkitchen") != null) {
			MemberDTO mdto = (MemberDTO) session.getAttribute("openkitchen");
			System.out.println("mNo : " + mdto.getmNo());
			MypageDTO mydto = mypageService.mypageInfo(mdto.getmNo());
			model.addAttribute("mydto", mydto);
			System.out.println("mydto 값은?" + mydto.toString());
			return "/mypage/mypageIn";
		} else {
			return "login/login";
		}
	}

	@RequestMapping(value = { "cookBookD", "cookRefundD", "cookEndD" })
	public String cookIn(@RequestParam("no") String no, Model model) {
		System.out.println(no);
		model.addAttribute("no", no);

		return "/mypage/class/cookIn";
	}

	@RequestMapping(value = { "teacherBase", "teacherSpace" })
	public String teacherBase(@RequestParam("no") String no, Model model) {
		System.out.println(no);
		model.addAttribute("no", no);

		return "/mypage/teacher/teacherDiscription";
	}

	@RequestMapping(value = { "standByClass", "ongoingClass", "completeClass" })
	public String openClassD(@RequestParam("no") String no, Model model) {
		System.out.println(no);
		model.addAttribute("no", no);

		return "/mypage/class/openClassD";
	}

	@RequestMapping(value = { "standBySpace", "ongoingSpace", "completeSpace" })
	public String openSpaceD(@RequestParam("no") String no, Model model) {
		System.out.println(no);
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
		System.out.println(no);
		model.addAttribute("no", no);

		return "/mypage/wishlist/wishlistIn";
	}

	// 선생님 [기본정보]등록시 필요한 파일을 등록하는 프로그램
	@RequestMapping(value = "multipartUpload", method = RequestMethod.POST)
	public String multipartUpload(@ModelAttribute TeacherRegistDTO dto, MultipartHttpServletRequest request) {

		// 파일 저장되는 경로
		String filePath;
		// 상세 썸네일
		String tDetailsumnail = "";

		// 사진 끝번호
		int count = 1;
		int mNo = dto.getmNo();
		System.out.println("회원 번호 넘어왔니?" + mNo);

		// tNo가 mNo임
		int tNo = dto.getmNo();
		dto.settNo(tNo);

		// !!!proceo가 proname이랑 같음.약간 이상해서 수동으로 일단 넣어주겟음
		dto.setProCeo(dto.getProName());

		// form data에 저장된 name들을 뽑아낸다.

		Iterator<String> it = request.getFileNames();
		// 넘어온 파일들의 정체를 밝히는 while문
		while (it.hasNext()) {
			String fileName = it.next();

			System.out.println("fileName:     " + fileName);

			// blob 또는 기존 형식으로 보내온 파일을 변환시킴
			MultipartFile mFile = request.getFile(fileName);
			// 이미지 저장 시킬 위치 + 파일명을 뽑아옴+
			filePath = regService.acceptImg(fileName, count, tNo);

			// 파일을 지정된 경로에 저장하기
			regService.makeFile(filePath, mFile);

			// dto에 저장하기 위해 ds만 뽑아온다.
			if (fileName.equals("DS-TYPE1")) {
				tDetailsumnail += regService.makeDS(fileName, count, tNo) + ",";
				count++;
				System.out.println("밖에 쪽 count:" + count);

			} else if (fileName.equals("MS")) {
				// sumnail
				String tMainsumnail = regService.makeMS(fileName, tNo);
				dto.settMainsumnail(tMainsumnail);

				// 사업자 인증 사진과 통장 사본 이미지를 판단해 dto에 넣는다.
			} else if (fileName.equals("proRegImg")) {
				dto.setProRegimg(regService.makeBK(fileName, tNo));

			} else if (fileName.equals("proAccountIng")) {
				// interface의 default method 사용
				dto.setProAccounting(regService.makeBK(fileName, tNo));
			}
		} // while end

		if (tDetailsumnail.length() != 0)
			// 문자열의 마지막 콤마 지우기
			tDetailsumnail = tDetailsumnail.substring(0, tDetailsumnail.length() - 1);

		if (tDetailsumnail != "") {
			dto.settDetailsumnail(tDetailsumnail);
		}

		regService.insertDTO(dto);

		return "mypage/teacher/teacherBase";
	}

	// 선생님 [기본정보]등록시 필요한 파일을 등록하는 프로그램
	@RequestMapping(value = "complete", method = RequestMethod.POST)
	public String complete(@ModelAttribute TeacherRegistDTO dto, MultipartHttpServletRequest request) {

		// 파일 저장되는 경로
		String filePath;
		// 상세 썸네일
		String tDetailsumnail = "";

		// 사진 끝번호
		int count = 1;
		int mNo = dto.getmNo();
		System.out.println("회원 번호 넘어왔니?" + mNo);

		// tNo가 mNo임
		int tNo = dto.getmNo();
		dto.settNo(tNo);

		// !!!proceo가 proname이랑 같음.약간 이상해서 수동으로 일단 넣어주겟음
		dto.setProCeo(dto.getProName());

		// form data에 저장된 name들을 뽑아낸다.

		Iterator<String> it = request.getFileNames();
		// 넘어온 파일들의 정체를 밝히는 while문
		while (it.hasNext()) {
			String fileName = it.next();

			System.out.println("fileName:     " + fileName);

			// blob 또는 기존 형식으로 보내온 파일을 변환시킴
			MultipartFile mFile = request.getFile(fileName);
			// 이미지 저장 시킬 위치 + 파일명을 뽑아옴+
			filePath = regService.acceptImg(fileName, count, tNo);

			// 파일을 지정된 경로에 저장하기
			regService.makeFile(filePath, mFile);

			// dto에 저장하기 위해 ds만 뽑아온다.
			if (fileName.equals("DS-TYPE1")) {
				tDetailsumnail += regService.makeDS(fileName, count, tNo) + ",";
				count++;
				System.out.println("밖에 쪽 count:" + count);

			} else if (fileName.equals("MS")) {
				// sumnail
				String tMainsumnail = regService.makeMS(fileName, tNo);
				dto.settMainsumnail(tMainsumnail);

				// 사업자 인증 사진과 통장 사본 이미지를 판단해 dto에 넣는다.
			} else if (fileName.equals("proRegImg")) {
				dto.setProRegimg(regService.makeBK(fileName, tNo));

			} else if (fileName.equals("proAccountIng")) {
				// interface의 default method 사용
				dto.setProAccounting(regService.makeBK(fileName, tNo));
			}
		} // while end

		if (tDetailsumnail.length() != 0)
			// 문자열의 마지막 콤마 지우기
			tDetailsumnail = tDetailsumnail.substring(0, tDetailsumnail.length() - 1);

		if (tDetailsumnail != "") {
			dto.settDetailsumnail(tDetailsumnail);
		}

		regService.applyDTO(dto);

		return "mypage/teacher/teacherBase";
	}

	// 선생님 [공간]등록시 필요한 파일을 등록하는 프로그램
	@RequestMapping(value = "multipartUploadS", method = RequestMethod.POST)
	public String multipartUpload(@ModelAttribute TeacherRegistDtoS dto, MultipartHttpServletRequest request) {

		// 파일 저장되는 경로
		String filePath;
		// 상세 썸네일
		String sDetailsumnail = "";

		// 사진 끝번호
		int count = 1;
		int mNo = dto.gethNo();
		System.out.println("회원 번호 넘어왔니?" + mNo);

		// hNo가 mNo임
		int hNo = mNo;

		// form data에 저장된 name들을 뽑아낸다.

		Iterator<String> it = request.getFileNames();
		// 넘어온 파일들의 정체를 밝히는 while문
		while (it.hasNext()) {
			String fileName = it.next();

			System.out.println("fileName:     " + fileName);

			// blob 또는 기존 형식으로 보내온 파일을 변환시킴
			MultipartFile mFile = request.getFile(fileName);
			// 이미지 저장 시킬 위치 + 파일명을 뽑아옴+
			filePath = regServiceS.acceptImg(fileName, count, hNo);

			// 파일을 지정된 경로에 저장하기
			regServiceS.makeFile(filePath, mFile);

			// dto에 저장하기 위해 ds만 뽑아온다.
			if (fileName.equals("S-DS-TYPE1")) {
				sDetailsumnail += regServiceS.makeDS(fileName, count, hNo) + ",";
				count++;
				System.out.println("밖에 쪽 count:" + count);

			} else if (fileName.equals("S-MS")) {
				// sumnail
				String sMainsumnail = regServiceS.makeMS(fileName, hNo);
				dto.setsMainsumnail(sMainsumnail);
			} else {
				sDetailsumnail += regServiceS.makeDS(fileName, count, hNo) + ",";
				count++;
				System.out.println("밖에 쪽 count:" + count);

			}
		} // while end

		if (sDetailsumnail.length() != 0)
			// 문자열의 마지막 콤마 지우기
			sDetailsumnail = sDetailsumnail.substring(0, sDetailsumnail.length() - 1);

		if (sDetailsumnail != "") {
			dto.setsDetailsumnail(sDetailsumnail);
		}

		regServiceS.insertDTO(dto);

		return "mypage/teacher/teacherBase";
	}

	// 선생님 등록시 등록[완료]하는 프로그램
	@RequestMapping(value = "completeS", method = RequestMethod.POST)
	public String completeS(@ModelAttribute TeacherRegistDtoS dto, MultipartHttpServletRequest request) {

		// 파일 저장되는 경로
		String filePath;
		// 상세 썸네일
		String sDetailsumnail = "";

		// 사진 끝번호
		int count = 1;
		int mNo = dto.gethNo();
		System.out.println("회원 번호 넘어왔니?" + mNo);

		// hNo가 mNo임
		int hNo = mNo;

		// form data에 저장된 name들을 뽑아낸다.

		Iterator<String> it = request.getFileNames();
		// 넘어온 파일들의 정체를 밝히는 while문
		while (it.hasNext()) {
			String fileName = it.next();

			System.out.println("fileName:     " + fileName);

			// blob 또는 기존 형식으로 보내온 파일을 변환시킴
			MultipartFile mFile = request.getFile(fileName);
			// 이미지 저장 시킬 위치 + 파일명을 뽑아옴+
			filePath = regServiceS.acceptImg(fileName, count, hNo);

			// 파일을 지정된 경로에 저장하기
			regServiceS.makeFile(filePath, mFile);

			// dto에 저장하기 위해 ds만 뽑아온다.
			if (fileName.equals("S-DS-TYPE1")) {
				sDetailsumnail += regServiceS.makeDS(fileName, count, hNo) + ",";
				count++;
				System.out.println("밖에 쪽 count:" + count);

			} else if (fileName.equals("S-MS")) {
				// sumnail
				String sMainsumnail = regServiceS.makeMS(fileName, hNo);
				dto.setsMainsumnail(sMainsumnail);
			} else {
				sDetailsumnail += regServiceS.makeDS(fileName, count, hNo) + ",";
				count++;
				System.out.println("밖에 쪽 count:" + count);

			}
		} // while end

		if (sDetailsumnail.length() != 0)
			// 문자열의 마지막 콤마 지우기
			sDetailsumnail = sDetailsumnail.substring(0, sDetailsumnail.length() - 1);

		if (sDetailsumnail != "") {
			dto.setsDetailsumnail(sDetailsumnail);
		}

		regServiceS.applyDTO(dto);

		return "mypage/teacher/teacherBase";
	}

	@RequestMapping(value = "registTeacher", method = RequestMethod.POST)
	public String registTeacher() {
		// 등록하는 Service 실행하기

		return "mypage/in";
	}

	// 어디다가둬야하지 이거?????????
	@RequestMapping(value = { "classBase", "classSchedule" })
	public String classBase(@RequestParam("no") String no, Model model) {
		System.out.println(no);
		model.addAttribute("no", no);

		return "mypage/class/applyClass";
	}

	@RequestMapping(value = { "classSpace" })
	public String classSpace(@RequestParam("no") String no, Model model) {
		System.out.println(no);
		model.addAttribute("no", no);

		return "mypage/class/applyClass";
	}

	// 예약한 공간 정보를 가지고 온다.
	@RequestMapping(value = { "spaceBookList" }, produces = "application/text; charset=utf8")
	@ResponseBody
	public String spaceBookList() {
		// !!세션에 회원번호 담겨지면 그걸로 가지고 오자~ 회원번호= 선생님 번호임
		int tNo = 1;
		List<ClassRegistDtoL> list = regServiceCS.selectOne(tNo).getCrdl();

		S3ClientFactory s3client = new S3ClientFactory();
		for (int i = 0; i < list.size(); i++) {
			list.get(i).setsMainsumnail(s3client.geturl(list.get(i).getsMainsumnail()));
		}
		String str = "";
		ObjectMapper mapper = new ObjectMapper();
		if (list.size() != 0) {
			try {
				str = mapper.writeValueAsString(list);
			} catch (JsonProcessingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else {
			try {
				str = mapper.writeValueAsString("noValue");
			} catch (JsonProcessingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return str;
	}

	// 클래스 [기본정보] 등록시 필요한 파일을 등록하는 프로그램
	@RequestMapping(value = "multipartUploadC", method = RequestMethod.POST)
	public String multipartUploadC(@ModelAttribute ClassRegistDTO dto, MultipartHttpServletRequest request) {

		// 파일 저장되는 경로
		String filePath;
		// 상세 썸네일
		String cDetailsumnail = "";

		System.out.println("dto.toString :  " + dto.toString());
		// 사진 끝번호
		int count = 1;
		int tNo = dto.gettNo();
		System.out.println("선생님 번호 넘어왔니?" + tNo);

		// 필요한 정보를 가지고오는 class
		// 필요한 정보를 담아 준다.
		int cNo = regServiceC.<Integer>selectOne(tNo).getT();
		System.out.println("cNo 들어 갔니?" + cNo);

		// form data에 저장된 name들을 뽑아낸다.
		Iterator<String> it = request.getFileNames();
		// 넘어온 파일들의 정체를 밝히는 while문
		while (it.hasNext()) {
			String fileName = it.next();

			System.out.println("fileName:     " + fileName);

			// blob 또는 기존 형식으로 보내온 파일을 변환시킴
			MultipartFile mFile = request.getFile(fileName);
			// 이미지 저장 시킬 위치 + 파일명을 뽑아옴+
			filePath = regServiceC.acceptImg(fileName, count, cNo);

			// 파일을 지정된 경로에 저장하기
			regServiceC.makeFile(filePath, mFile);

			// dto에 저장하기 위해 ds만 뽑아온다.
			if (fileName.equals("C-DS-TYPE1")) {
				cDetailsumnail += regServiceC.makeDS(fileName, count, cNo) + ",";
				count++;
				System.out.println("밖에 쪽 count:" + count);

			} else if (fileName.equals("C-MS")) {
				// sumnail
				String cMainsumnail = regServiceC.makeMS(fileName, cNo);
				dto.setcMainsumnail(cMainsumnail);
			} else {
				cDetailsumnail += regServiceC.makeDS(fileName, count, cNo) + ",";
				count++;
				System.out.println("밖에 쪽 count:" + count);

			}
		} // while end

		if (cDetailsumnail.length() != 0)
			// 문자열의 마지막 콤마 지우기
			cDetailsumnail = cDetailsumnail.substring(0, cDetailsumnail.length() - 1);

		if (cDetailsumnail != "") {
			dto.setcDetailsumnail(cDetailsumnail);
		}
		regServiceC.insertDTO(dto);

		return "mypage/teacher/teacherBase";
	}

	// 클래스 [기본정보] 등록시 필요한 파일을 등록하는 프로그램
	@RequestMapping(value = "completeC", method = RequestMethod.POST)
	public String completeC(@ModelAttribute ClassRegistDTO dto, MultipartHttpServletRequest request, Model model) {

		// 파일 저장되는 경로
		String filePath;
		// 상세 썸네일
		String cDetailsumnail = "";

		System.out.println("dto.toString :  " + dto.toString());
		// 사진 끝번호
		int count = 1;
		int tNo = dto.gettNo();
		System.out.println("선생님 번호 넘어왔니?" + tNo);

		// 필요한 정보를 가지고오는 class
		// 필요한 정보를 담아 준다.
		int cNo = regServiceC.<Integer>selectOne(tNo).getT();
		System.out.println("cNo 들어 갔니?" + cNo);

		// 공간 등록시 필요한 클래스번호 session에 넣음
		model.addAttribute("cNo", cNo);
		// form data에 저장된 name들을 뽑아낸다.
		Iterator<String> it = request.getFileNames();
		// 넘어온 파일들의 정체를 밝히는 while문
		while (it.hasNext()) {
			String fileName = it.next();

			System.out.println("fileName:     " + fileName);

			// blob 또는 기존 형식으로 보내온 파일을 변환시킴
			MultipartFile mFile = request.getFile(fileName);
			// 이미지 저장 시킬 위치 + 파일명을 뽑아옴+
			filePath = regServiceC.acceptImg(fileName, count, cNo);

			// 파일을 지정된 경로에 저장하기
			regServiceC.makeFile(filePath, mFile);

			// dto에 저장하기 위해 ds만 뽑아온다.
			if (fileName.equals("C-DS-TYPE1")) {
				cDetailsumnail += regServiceC.makeDS(fileName, count, cNo) + ",";
				count++;
				System.out.println("밖에 쪽 count:" + count);

			} else if (fileName.equals("C-MS")) {
				// sumnail
				String cMainsumnail = regServiceC.makeMS(fileName, cNo);
				dto.setcMainsumnail(cMainsumnail);
			} else {
				cDetailsumnail += regServiceC.makeDS(fileName, count, cNo) + ",";
				count++;
				System.out.println("밖에 쪽 count:" + count);

			}
		} // while end

		if (cDetailsumnail.length() != 0)
			// 문자열의 마지막 콤마 지우기
			cDetailsumnail = cDetailsumnail.substring(0, cDetailsumnail.length() - 1);

		if (cDetailsumnail != "") {
			dto.setcDetailsumnail(cDetailsumnail);
		}
		regServiceC.applyDTO(dto);

		return "mypage/teacher/teacherBase";
	}

	// 클래스 [공간정보] 등록시 필요한 파일을 등록하는 프로그램
	@RequestMapping(value = "completeR", method = RequestMethod.POST)
	@ResponseBody
	public String completeR(@RequestBody List<ClassRegistDtoR> list) {

		String str = "";
		ObjectMapper mapper = new ObjectMapper();
		if (list.get(0).getcNo() != 0) {

			regServiceCS.insertDTO(Util.packingR(list));
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
		}

		return str;
	}

	// 스케쥴 확인시 필요한 파일을 등록하는 프로그램
	@RequestMapping(value = "totalScheduleList", method = RequestMethod.POST, produces = "application/text; charset=utf8")
	@ResponseBody
	public String TotalScheduleList(HttpServletRequest request) {
		HttpSession session = request.getSession();
		String str = "";
		ObjectMapper mapper = new ObjectMapper();
		if (session.getAttribute("cNo") != null) {
			if (str == "") {
				int cNo = Integer.parseInt((String) session.getAttribute("cNo"));
				List<ClassRegistDtoSch> list = regServicecSch.selectOne(cNo).getCrdsch();

				if (list.size() != 0) {
					try {
						str = mapper.writeValueAsString(list);
					} catch (JsonProcessingException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				} else if (list.size() == 0) {
					try {
						str = mapper.writeValueAsString("noregist");
					} catch (JsonProcessingException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
			} else {
				try {
					str = mapper.writeValueAsString("noregist");
				} catch (JsonProcessingException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

			}

		} else {
			try {
				str = mapper.writeValueAsString("noregist");
			} catch (JsonProcessingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
		return str;
	}

	@RequestMapping(value = "completeSch", method = RequestMethod.POST)
	@ResponseBody
	public String completeSch(HttpServletRequest request) {
		HttpSession session = request.getSession();
		String str = "";
		ObjectMapper mapper = new ObjectMapper();
		if (session.getAttribute("mNo") != null) {
			int cNo = Integer.parseInt((String) session.getAttribute("mNo"));
			regServicecSch.insertDTO(cNo);

			try {
				str = mapper.writeValueAsString("complete");
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

		}
		return str;
	}

////////////////////////////예약 클래스 ///////////////////////////////////
	// 예약한 공간 정보를 가지고 온다.
	@RequestMapping(value = { "cookBookList" }, produces = "application/text; charset=utf8")
	@ResponseBody
	public String cookBookList(HttpServletRequest request) {
		HttpSession session = request.getSession();
		String str = "";
		ObjectMapper mapper = new ObjectMapper();
		if (session.getAttribute("openkitchen") != null) {
			System.out.println("openkitchen not null");
			MemberDTO mdto = (MemberDTO) session.getAttribute("openkitchen");
			System.out.println("mNo : " + mdto.getmNo());

			int cNo = mdto.getmNo();

			// !!세션에 회원번호 담겨지면 그걸로 가지고 오자~ 회원번호= 선생님 번호임

			List<CookBookDTO> list = mypageCookBook.selectOne(cNo).getCbd();

			S3ClientFactory s3client = new S3ClientFactory();
			for (int i = 0; i < list.size(); i++) {
				list.get(i).setcMainsumnail(s3client.geturl(list.get(i).getcMainsumnail()));
			} // for end

			if (list.size() != 0) {
				try {

					str = mapper.writeValueAsString(list);
				} catch (JsonProcessingException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

			} else {
				try {
					System.out.println("list is null");
					str = mapper.writeValueAsString("noValue");
				} catch (JsonProcessingException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} // try catch end
			} // list.size end
		} else {
			System.out.println("openkitchen is null");
			try {
				str = mapper.writeValueAsString("noValue");
			} catch (JsonProcessingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} // try catch end
		} // session end
		return str;
	}

	// 예약취소한 정보를 가지고 온다.
	@RequestMapping(value = { "cookRefundList" }, produces = "application/text; charset=utf8")
	@ResponseBody
	public String cookRefundList(HttpServletRequest request) {
		HttpSession session = request.getSession();
		String str = "";
		ObjectMapper mapper = new ObjectMapper();
		if (session.getAttribute("openkitchen") != null) {
			System.out.println("openkitchen not null");
			MemberDTO mdto = (MemberDTO) session.getAttribute("openkitchen");
			System.out.println("mNo : " + mdto.getmNo());

			int cNo = mdto.getmNo();

			// !!세션에 회원번호 담겨지면 그걸로 가지고 오자~ 회원번호= 선생님 번호임

			List<CookRefundDTO> list = mypageCookRefund.selectOne(cNo).getCrd();

			S3ClientFactory s3client = new S3ClientFactory();
			for (int i = 0; i < list.size(); i++) {
				list.get(i).setcMainsumnail(s3client.geturl(list.get(i).getcMainsumnail()));
			} // for end

			if (list.size() != 0) {
				try {

					str = mapper.writeValueAsString(list);
				} catch (JsonProcessingException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

			} else {
				try {
					System.out.println("list is null");
					str = mapper.writeValueAsString("noValue");
				} catch (JsonProcessingException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} // try catch end
			} // list.size end
		} else {
			System.out.println("openkitchen is null");
			try {
				str = mapper.writeValueAsString("noValue");
			} catch (JsonProcessingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} // try catch end
		} // session end
		return str;
	}

	// 예약종료한 정보를 가지고 온다.
	@RequestMapping(value = { "cookEndList" }, produces = "application/text; charset=utf8")
	@ResponseBody
	public String cookEndList(HttpServletRequest request) {
		HttpSession session = request.getSession();
		String str = "";
		ObjectMapper mapper = new ObjectMapper();
		if (session.getAttribute("openkitchen") != null) {
			System.out.println("openkitchen not null");
			MemberDTO mdto = (MemberDTO) session.getAttribute("openkitchen");
			System.out.println("mNo : " + mdto.getmNo());

			int cNo = mdto.getmNo();

			// !!세션에 회원번호 담겨지면 그걸로 가지고 오자~ 회원번호= 선생님 번호임

			List<CookRefundDTO> list = mypageCookEnd.selectOne(cNo).getCrd();

			S3ClientFactory s3client = new S3ClientFactory();
			for (int i = 0; i < list.size(); i++) {
				list.get(i).setcMainsumnail(s3client.geturl(list.get(i).getcMainsumnail()));
			} // for end

			if (list.size() != 0) {
				try {

					str = mapper.writeValueAsString(list);
				} catch (JsonProcessingException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

			} else {
				try {
					System.out.println("list is null");
					str = mapper.writeValueAsString("noValue");
				} catch (JsonProcessingException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} // try catch end
			} // list.size end
		} else {
			System.out.println("openkitchen is null");
			try {
				str = mapper.writeValueAsString("noValue");
			} catch (JsonProcessingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} // try catch end
		} // session end
		return str;
	}

///////////////////////마이 페이지 개설된 클래스 /////////////////////////////////////////////
	// 신청 클래스 정보를 가지고 온다.
	@RequestMapping(value = { "standByList" }, produces = "application/text; charset=utf8")
	@ResponseBody
	public String standByList(HttpServletRequest request) {
		HttpSession session = request.getSession();
		String str = "";
		ObjectMapper mapper = new ObjectMapper();
		if (session.getAttribute("openkitchen") != null) {
			System.out.println("openkitchen not null");
			MemberDTO mdto = (MemberDTO) session.getAttribute("openkitchen");
			System.out.println("mNo : " + mdto.getmNo());

			int mNo = mdto.getmNo();

			// !!세션에 회원번호 담겨지면 그걸로 가지고 오자~ 회원번호= 선생님 번호임

			List<StandByClassDTO> list = mypageStandByClass.selectOne(mNo).getSbcd();

			S3ClientFactory s3client = new S3ClientFactory();
			for (int i = 0; i < list.size(); i++) {
				list.get(i).setcMainsumnail(s3client.geturl(list.get(i).getcMainsumnail()));
			} // for end

			if (list.size() != 0) {
				try {

					str = mapper.writeValueAsString(list);
				} catch (JsonProcessingException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

			} else {
				try {
					System.out.println("list is null");
					str = mapper.writeValueAsString("noValue");
				} catch (JsonProcessingException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} // try catch end
			} // list.size end
		} else {
			System.out.println("openkitchen is null");
			try {
				str = mapper.writeValueAsString("noValue");
			} catch (JsonProcessingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} // try catch end
		} // session end
		return str;
	}
	// 진행중 클래스 정보를 가지고 온다.
	@RequestMapping(value = { "ongoingClassList" }, produces = "application/text; charset=utf8")
	@ResponseBody
	public String OngoingList(HttpServletRequest request) {
		HttpSession session = request.getSession();
		String str = "";
		ObjectMapper mapper = new ObjectMapper();
		if (session.getAttribute("openkitchen") != null) {
			System.out.println("openkitchen not null");
			MemberDTO mdto = (MemberDTO) session.getAttribute("openkitchen");
			System.out.println("mNo : " + mdto.getmNo());

			int mNo = mdto.getmNo();

			// !!세션에 회원번호 담겨지면 그걸로 가지고 오자~ 회원번호= 선생님 번호임

			List<OngoingClassDTO> list = mypageOngoingClass.selectOne(24).getOcd();

			S3ClientFactory s3client = new S3ClientFactory();
			for (int i = 0; i < list.size(); i++) {
				list.get(i).setcMainsumnail(s3client.geturl(list.get(i).getcMainsumnail()));
			} // for end

			if (list.size() != 0) {
				try {

					str = mapper.writeValueAsString(list);
				} catch (JsonProcessingException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

			} else {
				try {
					System.out.println("list is null");
					str = mapper.writeValueAsString("noValue");
				} catch (JsonProcessingException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} // try catch end
			} // list.size end
		} else {
			System.out.println("openkitchen is null");
			try {
				str = mapper.writeValueAsString("noValue");
			} catch (JsonProcessingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} // try catch end
		} // session end
		return str;
	}
	
	// 종료된 클래스 정보를 가지고 온다.
	@RequestMapping(value = { "completeClassList" }, produces = "application/text; charset=utf8")
	@ResponseBody
	public String CompleteList(HttpServletRequest request) {
		HttpSession session = request.getSession();
		String str = "";
		ObjectMapper mapper = new ObjectMapper();
		if (session.getAttribute("openkitchen") != null) {
			System.out.println("openkitchen not null");
			MemberDTO mdto = (MemberDTO) session.getAttribute("openkitchen");
			System.out.println("mNo : " + mdto.getmNo());

			int mNo = mdto.getmNo();

			// !!세션에 회원번호 담겨지면 그걸로 가지고 오자~ 회원번호= 선생님 번호임

			List<CompleteClassDTO> list = mypageCompleteClass.selectOne(24).getCcd();

			S3ClientFactory s3client = new S3ClientFactory();
			for (int i = 0; i < list.size(); i++) {
				list.get(i).setcMainsumnail(s3client.geturl(list.get(i).getcMainsumnail()));
			} // for end

			if (list.size() != 0) {
				try {

					str = mapper.writeValueAsString(list);
				} catch (JsonProcessingException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

			} else {
				try {
					System.out.println("list is null");
					str = mapper.writeValueAsString("noValue");
				} catch (JsonProcessingException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} // try catch end
			} // list.size end
		} else {
			System.out.println("openkitchen is null");
			try {
				str = mapper.writeValueAsString("noValue");
			} catch (JsonProcessingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} // try catch end
		} // session end
		return str;
	}
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

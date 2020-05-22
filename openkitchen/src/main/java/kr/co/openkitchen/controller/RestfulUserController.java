package kr.co.openkitchen.controller;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

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
import kr.co.openkitchen.dto.OngoingClassDTO;
import kr.co.openkitchen.dto.StandByClassDTO;
import kr.co.openkitchen.dto.TeacherRegistDTO;
import kr.co.openkitchen.dto.TeacherRegistDtoS;
import kr.co.openkitchen.service.MypageCookInter;
import kr.co.openkitchen.service.MypageCookOrder;
import kr.co.openkitchen.service.MypageOpenClassInter;
import kr.co.openkitchen.service.MypageOpenClassOrder;
import kr.co.openkitchen.service.RegistOrderService;
import kr.co.openkitchen.service.RegistOrderServiceF;
import kr.co.openkitchen.service.RegistServiceInter;
import kr.co.openkitchen.service.RegistServiceInterF;

@RequestMapping("/mypage/users")
@RestController
public class RestfulUserController {
	// FactoryDesign Pattern
	@Autowired
	MypageCookOrder mypageCookOrder;
	MypageCookInter mypageCook;

	@Autowired
	MypageOpenClassOrder mypageOpenClassOrder;
	MypageOpenClassInter mypageOpenClass;

	@Autowired
	RegistOrderService registOrderService;
	RegistServiceInter registService;

	@Autowired
	RegistOrderServiceF registOrderServiceF;
	RegistServiceInterF registServiceF;

	//by 조기종 [예약한 클래스 정보] 요청_200421(수정)
	@RequestMapping(value = { "/{mNo}/cookBookList" }, method = RequestMethod.GET)
	public Map<String, Object> cookBookList(@PathVariable int mNo) {
		// data를 담을 hashmap
		Map<String, Object> map = new HashMap<String, Object>();
		// FactoryPattern Service Instance
		mypageCook = mypageCookOrder.receiveOrder(MypageCookInterType.MYPAGECOOKBOOK);

		if (mypageCook.selectOne(mNo).getCbd().size() != 0) {
			// 보낼 List 객체 선언
			List<CookBookDTO> bookingList = mypageCook.selectOne(mNo).getCbd();
			// AWS S3
			S3ClientFactory s3client = new S3ClientFactory();
			// request url form s3
			for (int i = 0; i < bookingList.size(); i++) {
				bookingList.get(i).setcMainsumnail(s3client.geturl(bookingList.get(i).getcMainsumnail()));
			} // for end
			map.put("data", bookingList);
		} else {
			map.put("result", Boolean.FALSE);
		} // if end
		return map;
	}

	//by 조기종  클래스 [예약취소정보] 요청_200421(수정)
	@RequestMapping(value = { "/{mNo}/cookRefundList" }, method = RequestMethod.GET)
	public Map<String, Object> cookRefundList(@PathVariable int mNo) {
		// data를 담을 hashmap
		Map<String, Object> map = new HashMap<String, Object>();
		// FactoryPattern Service Instance
		mypageCook = mypageCookOrder.receiveOrder(MypageCookInterType.MYPAGECOOKREFUND);

		if (mypageCook.selectOne(mNo).getCrd().size() != 0) {

			List<CookRefundDTO> refundList = mypageCook.selectOne(mNo).getCrd();
			// aws s3
			S3ClientFactory s3client = new S3ClientFactory();

			// request url form s3
			for (int i = 0; i < refundList.size(); i++) {
				refundList.get(i).setcMainsumnail(s3client.geturl(refundList.get(i).getcMainsumnail()));
			} // for end
			map.put("data", refundList);
		} else {
			map.put("result", Boolean.FALSE);
		} // if end
		return map;
	}

	//by 조기종  클래스 [예약종료 정보] 요청_200421(수정)
	@RequestMapping(value = { "/{mNo}/cookEndList" }, method = RequestMethod.GET)
	public Map<String, Object> cookEndList(@PathVariable int mNo) {
		// data를 담을 hashmap
		Map<String, Object> map = new HashMap<String, Object>();
		// FactoryPattern Service Instance
		mypageCook = mypageCookOrder.receiveOrder(MypageCookInterType.MYPAGECOOKEND);

		if (mypageCook.selectOne(mNo).getCrd().size() != 0) {
			List<CookRefundDTO> endList = mypageCook.selectOne(mNo).getCrd();
			// aws s3
			S3ClientFactory s3client = new S3ClientFactory();
			// request url from s3
			for (int i = 0; i < endList.size(); i++) {
				endList.get(i).setcMainsumnail(s3client.geturl(endList.get(i).getcMainsumnail()));
			} // for end
			map.put("data", endList);
		} else {
			map.put("result", Boolean.FALSE);
		} // if end
		return map;
	}

	// 예약 클래스 정보 end

	//by 조기종  [신청 클래스] 정보 요청_200426(수정)
	@RequestMapping(value = { "/{mNo}/standByList" }, method = RequestMethod.GET)
	public Map<String, Object> standByList(@PathVariable int mNo) {

		Map<String, Object> map = new HashMap<String, Object>();
		// FactoryPattern Service Instance
		mypageOpenClass = mypageOpenClassOrder.receiveOrder(MypageOpenCType.MYPAGESTANDBYCLASS);

		if (mypageOpenClass.selectOne(mNo).getSbcd().size() != 0) {

			List<StandByClassDTO> standByList = mypageOpenClass.selectOne(mNo).getSbcd();
			// aws s3
			S3ClientFactory s3client = new S3ClientFactory();

			// request url from s3
			for (int i = 0; i < standByList.size(); i++) {
				standByList.get(i).setcMainsumnail(s3client.geturl(standByList.get(i).getcMainsumnail()));
			} // for end
			map.put("data", standByList);

		} else {
			map.put("result", Boolean.FALSE);
		} // session end
		return map;
	}

	//by 조기종  [진행중 클래스 정보]요청_200417(수정)
	@RequestMapping(value = { "/{mNo}/ongoingClassList" }, method = RequestMethod.GET)
	public Map<String, Object> OngoingList(@PathVariable int mNo) {
		Map<String, Object> map = new HashMap<String, Object>();
		mypageOpenClass = mypageOpenClassOrder.receiveOrder(MypageOpenCType.MYPAGEONGOINGCLASS);

		if (mypageOpenClass.selectOne(mNo).getOcd().size() != 0) {
			// FactoryPattern Service Instance

			List<OngoingClassDTO> ongoingList = mypageOpenClass.selectOne(mNo).getOcd();
			// aws s3
			S3ClientFactory s3client = new S3ClientFactory();

			// request url from s3
			for (int i = 0; i < ongoingList.size(); i++) {
				ongoingList.get(i).setcMainsumnail(s3client.geturl(ongoingList.get(i).getcMainsumnail()));
			} // for end
			map.put("data", ongoingList);

		} else {
			map.put("result", Boolean.FALSE);
		} // session end
		return map;
	}

	//by 조기종  [완료된 클래스 리스트]를 요청.200417(수정)
	@RequestMapping(value = { "/{mNo}/completeClassList" })
	public Map<String, Object> CompleteList(@PathVariable int mNo) {
		Map<String, Object> returnData = new HashMap<String, Object>();
		//MypageCompleteClass DI 
		mypageOpenClass = mypageOpenClassOrder.receiveOrder(MypageOpenCType.MYPAGECOMPLETECLASS);

		if (mypageOpenClass.selectOne(mNo).getCcd().size() != 0) {
			// FactoryPattern Service Instance
			List<CompleteClassDTO> completeList = mypageOpenClass.selectOne(mNo).getCcd();
			// aws s3
			S3ClientFactory s3client = new S3ClientFactory();
			// request url from s3
			for (int i = 0; i < completeList.size(); i++) {
				completeList.get(i).setcMainsumnail(s3client.geturl(completeList.get(i).getcMainsumnail()));
				System.out.println(completeList.get(i).toString());
			} // for End
			returnData.put("data", completeList);
		} else {
			returnData.put("result", Boolean.FALSE);
		} // if End
		return returnData;
	}//CompleteList End

	//by 조기종  선생님 [기본정보]등록 요청_200429(수정)
	@RequestMapping(value = "teachers/{mNo}/teacherBaseInfo", method = RequestMethod.POST, headers = {
			"Content-type=multipart/form-data" })
	public Map<String, Boolean> teacherBaseInfo(@ModelAttribute TeacherRegistDTO dto,
			MultipartHttpServletRequest request) {
		
		// FactoryPattern Service Instance
		registServiceF = registOrderServiceF.receiveOrderF(RegistServiceTypeF.REGISTTEACHERIMPLE);
		
		
		// 파일 저장되는 경로
		String filePath;
		// 상세 썸네일
		String tDetailsumnail = "";
		// 사진 번호 부여
		int count = 1;
		// 넘어온 파일 리스트
		Iterator<String> fileList = request.getFileNames();
		Map<String, Boolean> map = new HashMap<String, Boolean>();
		// 넘어온 파일들의 정체를 밝히는 while문
		while (fileList.hasNext()) {
			String fileName = fileList.next();
			// blob 또는 기존 File 형식으로 보내온 파일을 MultiPart로 변환
			MultipartFile mFile = request.getFile(fileName);
			filePath = registServiceF.createImgNameNpath(fileName, count, dto.gettNo());
			registServiceF.registerFileToS3(filePath, mFile);

			// 파일 종류 구분 후 저장
			if (fileName.equals("DS-TYPE1")) {
				tDetailsumnail += registServiceF.namingDS(fileName, count, dto.gettNo()) + ",";
				count++;
			} else if (fileName.equals("MS")) {
				String tMainsumnail = registServiceF.namingMS(fileName, dto.gettNo());
				dto.settMainsumnail(tMainsumnail);
			} else if (fileName.equals("proRegImg")) {
				dto.setProRegimg(registServiceF.namingBK(fileName, dto.gettNo()));
			} else if (fileName.equals("proAccountIng")) {
				dto.setProAccounting(registServiceF.namingBK(fileName, dto.gettNo()));
			} // 파일 종류 구분 end

		} // while end

		// 데이터 유효성 판단
		if (tDetailsumnail.length() != 0)
			// 문자열의 마지막 콤마 제거
			tDetailsumnail = tDetailsumnail.substring(0, tDetailsumnail.length() - 1);

		if (tDetailsumnail != "") {
			dto.settDetailsumnail(tDetailsumnail);
		} // 데이터 유효성 판단 end

		// proceo=proname
		dto.setProCeo(dto.getProName());

		// DB insert Service
		registServiceF.insertDTO(dto);
		map.put("result", Boolean.TRUE);
		return map;
	}

	//by 조기종  선생님 [공간]등록 요청_200429(수정)
	@RequestMapping(value = "teachers/{mNo}/teacherSpaceInfo", method = RequestMethod.POST, headers = {
			"Content-type=multipart/form-data" })
	public Map<String, Boolean> teacherSpaceInfo(@ModelAttribute TeacherRegistDtoS dto,
			MultipartHttpServletRequest request) {
		// FactoryPattern Service Instance
		registServiceF = registOrderServiceF.receiveOrderF(RegistServiceTypeF.REGISTTEACHERIMPLES);
		// 파일 저장되는 경로
		String filePath;
		// 상세 썸네일
		String sDetailsumnail = "";
		// 사진 끝번호
		int count = 1;
		// form data에 저장된 name들을 뽑아낸다.
		Iterator<String> fileList = request.getFileNames();
		Map<String, Boolean> map = new HashMap<String, Boolean>();
		while (fileList.hasNext()) {
			String fileName = fileList.next();
			// blob 또는 기존 형식으로 보내온 파일을 변환시킴
			MultipartFile mFile = request.getFile(fileName);
			filePath = registServiceF.createImgNameNpath(fileName, count, dto.gethNo());
			registServiceF.registerFileToS3(filePath, mFile);

			// 파일 종류 구분 후 저장
			if (fileName.equals("S-DS-TYPE1")) {
				sDetailsumnail += registServiceF.namingDS(fileName, count, dto.gethNo()) + ",";
				count++;
			} else if (fileName.equals("S-MS")) {
				// sumnail
				String sMainsumnail = registServiceF.namingMS(fileName, dto.gethNo());
				dto.setsMainsumnail(sMainsumnail);
			} else {
				sDetailsumnail += registServiceF.namingDS(fileName, count, dto.gethNo()) + ",";
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

		map.put("result", Boolean.TRUE);
		return map;
	}
      
	//by 조기종 클래스 [기본정보] 등록 요청_200429(수정)
	@RequestMapping(value = "/teachers/{mNo}/classBaseInfo", method = RequestMethod.POST, headers = {"Content-type=multipart/form-data" })
	public Map<String, Object> classBaseInfo(@ModelAttribute ClassRegistDTO dto, MultipartHttpServletRequest request) {
		Map<String, Object> map = new HashMap<String, Object>();
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
		map.put("cNo",cNo);
		map.put("result", Boolean.TRUE);
		return map;
	}

	//by 조기종  클래스 등록시 [예약한 공간 정보] 리스트 요청_200428(수정)
	@RequestMapping(value = "/teachers/{mNo}/{cNo}/spaceBookList", method = RequestMethod.GET)
	public Map<String, Object> spaceBookList(@PathVariable int mNo) {

		Map<String, Object> map = new HashMap<String, Object>();
		// FactoryPattern Service Instance
		registService = registOrderService.receiveOrder(RegistServiceType.REGISTCLASSIMPLES);
		if (registService.selectOne(mNo).getCrdl().size() != 0) {
			List<ClassRegistDtoL> sumnailList = registService.selectOne(mNo).getCrdl();
			// aws s3
			S3ClientFactory s3client = new S3ClientFactory();

			// request url from s3
			for (int i = 0; i < sumnailList.size(); i++) {
				sumnailList.get(i).setsMainsumnail(s3client.geturl(sumnailList.get(i).getsMainsumnail()));
			}
			map.put("data", sumnailList);
		} else {
			map.put("result", Boolean.FALSE);
		} // session end
		return map;
	}

	//by 조기종  클래스 [공간정보] 요청_200422(수정)
	@RequestMapping(value = "/teachers/{mNo}/{cNo}/classSpaceRegist", method = RequestMethod.POST
			,headers= {"Content-type=application/json; charset=UTF-8"})
	public Map<String, Object> classSpaceRegist(@RequestBody List<ClassRegistDtoR> rentalNoList) {

		Map<String, Object> map = new HashMap<String, Object>();
		// FactoryPattern Service Instance
		registService = registOrderService.receiveOrder(RegistServiceType.REGISTCLASSIMPLES);
		registService.insertDTO(Util.packingR(rentalNoList));
        
		map.put("result", Boolean.TRUE);
		return map;
	}

	//by 조기종  클래스 등록시 [스케쥴 확인] 요청_200417
	@RequestMapping(value = "/teachers/{mNo}/{cNo}/totalScheduleList", method = RequestMethod.GET)
	public Map<String, Object> TotalScheduleList(@PathVariable int cNo) {

		Map<String, Object> map = new HashMap<String, Object>();
		// FactoryPattern Service Instance
		registService = registOrderService.receiveOrder(RegistServiceType.REGISTCLASSIMPLESCH);
		if (registService.selectOne(cNo).getCrdsch().size() != 0) {
			List<ClassRegistDtoSch> scheduleList = registService.selectOne(cNo).getCrdsch();
			map.put("data", scheduleList);
		} else {
			map.put("result", Boolean.FALSE);
		}

		return map;
	}

	//by 조기종  클래스 등록 [신청완료] 요청_200417
	@RequestMapping(value = "/teachers/{mNo}/{cNo}/completeSch", method = RequestMethod.PUT,headers= {"Content-type=application/json; charset=UTF-8"})
	public Map<String, Object> completeSch(@PathVariable int cNo) {
		
		Map<String, Object> map = new HashMap<String, Object>();
		// FactoryPattern Service Instance
		registService = registOrderService.receiveOrder(RegistServiceType.REGISTCLASSIMPLESCH);
		registService.insertDTO(cNo);
		map.put("result",Boolean.TRUE);
		return map;
	}

	// 클래스 등록 End

}

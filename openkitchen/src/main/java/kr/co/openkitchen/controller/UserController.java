package kr.co.openkitchen.controller;

import java.util.Iterator;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import kr.co.openkitchen.dto.TeacherRegistDTO;
import kr.co.openkitchen.dto.TeacherRegistDtoS;
import kr.co.openkitchen.service.RegistServiceInter;

@Controller
@RequestMapping("/mypage")
public class UserController {
	
	//같은 Interface를 두번 쓴다는 것은 무슨 법칙에 깨진다고 들엇는데 여튼  보완이 필요함. 
	@Resource(name="registTeacherImple")
	RegistServiceInter regService;
	
	@Resource(name="registTeacherImpleS")
	RegistServiceInter regServiceS;
	
	
	
	@RequestMapping(value = {"in"})
	public String mypage() {
		return "/mypage/mypageIn";
	}
	
	@RequestMapping(value = {"cookBookD", "cookRefunD", "cookEndD"})
	public String cookIn(@RequestParam("no")String no, Model model) {
		System.out.println(no);
		model.addAttribute("no", no);
		
		return "/mypage/class/cookIn";
	}
	
	@RequestMapping(value = {"teacherBase","teacherSpace"})
	public String teacherBase(@RequestParam("no")String no, Model model) {
		System.out.println(no);
		model.addAttribute("no", no);
	
		return "/mypage/teacher/teacherDiscription";
	}
	
	
	@RequestMapping(value = {"standByClass", "ongoingClass", "completeClass"})
	public String openClassD(@RequestParam("no")String no, Model model) {
		System.out.println(no);
		model.addAttribute("no", no);
		
		return "/mypage/class/openClassD";
	}
	
	@RequestMapping(value = {"standBySpace", "ongoingSpace", "completeSpace"})
	public String openSpaceD(@RequestParam("no")String no, Model model) {
		System.out.println(no);
		model.addAttribute("no", no);
		
		return "/mypage/class/openSpaceD";
	}
	
	@RequestMapping(value = {"message"})
	public String message() {	
		return "/mypage/myInfo/message";
	}
	
	
	@RequestMapping(value = {"alarmD"})
	public String alarmD() {	
		return "/mypage/myInfo/alarmD";
	}
	
	
	@RequestMapping(value = {"wishlistClass", "wishlistTeacher", "wishlistSpace"})
	public String wishlistIn(@RequestParam("no")String no, Model model) {
		System.out.println(no);
		model.addAttribute("no", no);
		
		return "/mypage/wishlist/wishlistIn";
	}
	
	
	
//	@RequestMapping(value = {"standByClass"})
//	public String standByClass(@RequestParam("no")String no) {
//		System.out.println(no);
//		
//		
//		return "/mypage/class/standByClass";
//	}
//	
//	@RequestMapping(value = {"ongoingClass"})
//	public String ongoingClass(@RequestParam("no")String no, Model model) {
//		System.out.println(no);
//		model.addAttribute("no", no);
//		
//		
//		return "/mypage/class/openClassD";
//	}


	// 선생님  [기본정보]등록시 필요한 파일을 등록하는 프로그램
	@RequestMapping(value = "multipartUpload", method = RequestMethod.POST)
	public String multipartUpload(@ModelAttribute TeacherRegistDTO dto, MultipartHttpServletRequest request) { 
		
		
		
		//파일 저장되는 경로 
		String filePath;
		//상세 썸네일
		String tDetailsumnail = ""; 		
		
       
        //사진 끝번호 
		int count = 1;
		int mNo=dto.getmNo();
		System.out.println("회원 번호 넘어왔니?"+mNo);
		
		//tNo가 mNo임
        int tNo=dto.getmNo();
        dto.settNo(tNo);
        
		//!!!proceo가 proname이랑 같음.약간 이상해서 수동으로 일단 넣어주겟음 
		dto.setProCeo(dto.getProName());
		
		//form data에 저장된 name들을 뽑아낸다.
		
		Iterator<String> it = request.getFileNames();
		//넘어온 파일들의 정체를 밝히는 while문 
		while (it.hasNext()) {
			String fileName = it.next();
			
			System.out.println("fileName:     "+fileName);
			
			// blob 또는 기존 형식으로 보내온 파일을 변환시킴
			MultipartFile mFile = request.getFile(fileName);
			// 이미지 저장 시킬 위치 + 파일명을 뽑아옴+
			filePath = regService.acceptImg(fileName, count,tNo);
			
			// 파일을 지정된 경로에 저장하기
			regService.makeFile(filePath, mFile);
			
			
			// dto에 저장하기 위해 ds만 뽑아온다.
			if (fileName.equals("DS-TYPE1")) {
				tDetailsumnail += regService.makeDS(fileName, count,tNo) + ",";
				count++;
				System.out.println("밖에 쪽 count:" + count);
			
			} else if(fileName.equals("MS")){
               //sumnail  				
				String tMainsumnail = regService.makeMS(fileName,tNo);
				dto.settMainsumnail(tMainsumnail);
			
				//사업자 인증 사진과 통장 사본 이미지를 판단해 dto에 넣는다.
			}else if(fileName.equals("proRegImg")){
				dto.setProRegimg(regService.makeBK(fileName, tNo));
				
			}else if(fileName.equals("proAccountIng")) {
				//interface의 default method 사용
				dto.setProAccounting(regService.makeBK(fileName, tNo));
			}
		} // while end
		
		if (tDetailsumnail.length() != 0)
			// 문자열의 마지막 콤마 지우기
			tDetailsumnail = tDetailsumnail.substring(0, tDetailsumnail.length() - 1);
	  
		if(tDetailsumnail !="") {
		dto.settDetailsumnail(tDetailsumnail);
	   }
		
		
	  
		regService.insertDTO(dto);
		
		return "mypage/teacher/teacherBase";
	}
	// 선생님  [기본정보]등록시 필요한 파일을 등록하는 프로그램
		@RequestMapping(value = "complete", method = RequestMethod.POST)
		public String complete(@ModelAttribute TeacherRegistDTO dto, MultipartHttpServletRequest request) { 
			
			
			
			//파일 저장되는 경로 
			String filePath;
			//상세 썸네일
			String tDetailsumnail = ""; 		
			
	       
	        //사진 끝번호 
			int count = 1;
			int mNo=dto.getmNo();
			System.out.println("회원 번호 넘어왔니?"+mNo);
			
			//tNo가 mNo임
	        int tNo=dto.getmNo();
	        dto.settNo(tNo);
	        
			//!!!proceo가 proname이랑 같음.약간 이상해서 수동으로 일단 넣어주겟음 
			dto.setProCeo(dto.getProName());
			
			//form data에 저장된 name들을 뽑아낸다.
			
			Iterator<String> it = request.getFileNames();
			//넘어온 파일들의 정체를 밝히는 while문 
			while (it.hasNext()) {
				String fileName = it.next();
				
				System.out.println("fileName:     "+fileName);
				
				// blob 또는 기존 형식으로 보내온 파일을 변환시킴
				MultipartFile mFile = request.getFile(fileName);
				// 이미지 저장 시킬 위치 + 파일명을 뽑아옴+
				filePath = regService.acceptImg(fileName, count,tNo);
				
				// 파일을 지정된 경로에 저장하기
				regService.makeFile(filePath, mFile);
				
				
				// dto에 저장하기 위해 ds만 뽑아온다.
				if (fileName.equals("DS-TYPE1")) {
					tDetailsumnail += regService.makeDS(fileName, count,tNo) + ",";
					count++;
					System.out.println("밖에 쪽 count:" + count);
				
				} else if(fileName.equals("MS")){
	               //sumnail  				
					String tMainsumnail = regService.makeMS(fileName,tNo);
					dto.settMainsumnail(tMainsumnail);
				
					//사업자 인증 사진과 통장 사본 이미지를 판단해 dto에 넣는다.
				}else if(fileName.equals("proRegImg")){
					dto.setProRegimg(regService.makeBK(fileName, tNo));
					
				}else if(fileName.equals("proAccountIng")) {
					//interface의 default method 사용
					dto.setProAccounting(regService.makeBK(fileName, tNo));
				}
			} // while end
			
			if (tDetailsumnail.length() != 0)
				// 문자열의 마지막 콤마 지우기
				tDetailsumnail = tDetailsumnail.substring(0, tDetailsumnail.length() - 1);
		  
			if(tDetailsumnail !="") {
			dto.settDetailsumnail(tDetailsumnail);
		   }
			
			
		  
			regService.applyDTO(dto);
			
			return "mypage/teacher/teacherBase";
		}

	// 선생님 [공간]등록시 필요한 파일을 등록하는 프로그램
	@RequestMapping(value = "multipartUploadS", method = RequestMethod.POST)
	public String multipartUpload(@ModelAttribute TeacherRegistDtoS dto, MultipartHttpServletRequest request) { 
		
		
		
		//파일 저장되는 경로 
		String filePath;
		//상세 썸네일
		String sDetailsumnail = ""; 		
		
       
        //사진 끝번호 
		int count = 1;
		int mNo=dto.gethNo();
		System.out.println("회원 번호 넘어왔니?"+mNo);
		
		//hNo가 mNo임
        int hNo=mNo;
        
		
		
		//form data에 저장된 name들을 뽑아낸다.
		
		Iterator<String> it = request.getFileNames();
		//넘어온 파일들의 정체를 밝히는 while문 
		while (it.hasNext()) {
			String fileName = it.next();
			
			System.out.println("fileName:     "+fileName);
			
			// blob 또는 기존 형식으로 보내온 파일을 변환시킴
			MultipartFile mFile = request.getFile(fileName);
			// 이미지 저장 시킬 위치 + 파일명을 뽑아옴+
			filePath = regServiceS.acceptImg(fileName, count,hNo);
			
			// 파일을 지정된 경로에 저장하기
			regServiceS.makeFile(filePath, mFile);
			
			
			// dto에 저장하기 위해 ds만 뽑아온다.
			if (fileName.equals("S-DS-TYPE1")) {
				sDetailsumnail += regServiceS.makeDS(fileName, count,hNo) + ",";
				count++;
				System.out.println("밖에 쪽 count:" + count);
			
			} else if(fileName.equals("S-MS")){
               //sumnail  				
				String sMainsumnail = regServiceS.makeMS(fileName,hNo);
				dto.setsMainsumnail(sMainsumnail);
			}else {
				sDetailsumnail += regServiceS.makeDS(fileName, count,hNo) + ",";
				count++;
				System.out.println("밖에 쪽 count:" + count);
				
			}                   
		} // while end
		
		if (sDetailsumnail.length() != 0)
			// 문자열의 마지막 콤마 지우기
			sDetailsumnail = sDetailsumnail.substring(0, sDetailsumnail.length() - 1);
	  
		if(sDetailsumnail !="") {
		dto.setsDetailsumnail(sDetailsumnail);
	   }
		
		
	
		regServiceS.insertDTO(dto);
		
		return "mypage/teacher/teacherBase";
	}
	
	// 선생님 등록시  등록[완료]하는 프로그램
		@RequestMapping(value = "completeS", method = RequestMethod.POST)
		public String completeS(@ModelAttribute TeacherRegistDtoS dto, MultipartHttpServletRequest request) { 
			
			
			//파일 저장되는 경로 
			String filePath;
			//상세 썸네일
			String sDetailsumnail = ""; 		
			
	       
	        //사진 끝번호 
			int count = 1;
			int mNo=dto.gethNo();
			System.out.println("회원 번호 넘어왔니?"+mNo);
			
			//hNo가 mNo임
	        int hNo=mNo;
	        
			
			
			//form data에 저장된 name들을 뽑아낸다.
			
			Iterator<String> it = request.getFileNames();
			//넘어온 파일들의 정체를 밝히는 while문 
			while (it.hasNext()) {
				String fileName = it.next();
				
				System.out.println("fileName:     "+fileName);
				
				// blob 또는 기존 형식으로 보내온 파일을 변환시킴
				MultipartFile mFile = request.getFile(fileName);
				// 이미지 저장 시킬 위치 + 파일명을 뽑아옴+
				filePath = regServiceS.acceptImg(fileName, count,hNo);
				
				// 파일을 지정된 경로에 저장하기
				regServiceS.makeFile(filePath, mFile);
				
				
				// dto에 저장하기 위해 ds만 뽑아온다.
				if (fileName.equals("S-DS-TYPE1")) {
					sDetailsumnail += regServiceS.makeDS(fileName, count,hNo) + ",";
					count++;
					System.out.println("밖에 쪽 count:" + count);
				
				} else if(fileName.equals("S-MS")){
	               //sumnail  				
					String sMainsumnail = regServiceS.makeMS(fileName,hNo);
					dto.setsMainsumnail(sMainsumnail);
				}else {
					sDetailsumnail += regServiceS.makeDS(fileName, count,hNo) + ",";
					count++;
					System.out.println("밖에 쪽 count:" + count);
					
				}                   
			} // while end
			
			if (sDetailsumnail.length() != 0)
				// 문자열의 마지막 콤마 지우기
				sDetailsumnail = sDetailsumnail.substring(0, sDetailsumnail.length() - 1);
		  
			if(sDetailsumnail !="") {
			dto.setsDetailsumnail(sDetailsumnail);
		   }
			
			
		
			regServiceS.applyDTO(dto);
			
			return "mypage/teacher/teacherBase";
		}
	
  
     @RequestMapping(value="registTeacher",method=RequestMethod.POST)
       public String registTeacher() {
    	   //등록하는 Service 실행하기 
    	   
    	   return "mypage/in";
       }


 	//어디다가둬야하지 이거????????? 
 	@RequestMapping(value = {"classBase","classSchedule","classSpace"})
 	public String classBase(@RequestParam("no")String no, Model model) {
 		System.out.println(no);
 		model.addAttribute("no", no);
 	
 		return "mypage/class/applyClass";
 	}
 	

     // 테스트용 /////////////////////////////////////////////////
     @RequestMapping(value = "spaceBase", method=RequestMethod.GET)
     	public String spaceBase() {
    	 return "mypage/space/spaceBase";
     }
     @RequestMapping(value = "spaceIntro", method=RequestMethod.GET)
  		public String spaceIntro() {
    	 return "mypage/space/spaceIntro";
     }



}

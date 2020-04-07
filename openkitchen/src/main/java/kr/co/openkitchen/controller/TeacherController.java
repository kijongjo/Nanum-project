package kr.co.openkitchen.controller;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import kr.co.openkitchen.dto.TeacherRegistDTO;
import kr.co.openkitchen.service.RegistServiceInter;
import kr.co.openkitchen.service.ServiceInter;
import lombok.Setter;

@Controller
@RequestMapping("mypage")
public class TeacherController {
	
	@Setter(onMethod = @__({ @Autowired }))
	ServiceInter si;
	
	@Setter(onMethod = @__({ @Autowired }))
	RegistServiceInter regService;
	
	// teacherD view로 가는 프로그램
	@RequestMapping("teacherD")
	public String teacherD() {
		return "teacher/user/teacherD";
	}
	
	// 선생님 등록시 필요한 파일을 등록하는 프로그램
	@RequestMapping(value = "multipartUpload", method = RequestMethod.POST)
	public String multipartUpload(@ModelAttribute TeacherRegistDTO dto, MultipartHttpServletRequest request) {
		//파일 저장되는 경로 
		String filePath;
		//상세 썸네일
		String tDetailsumnail = ""; 		
		//선생님 번호 얻어오기 
        int tNo=dto.gettNo();
        //사진 끝번호 
		int count = 1;
		
		//proceo가 proname이랑 같음.약간 이상해서 수동으로 일단 넣어주겟음 
		dto.setProCeo(dto.getProName());
		
		
		//form data에 저장된 name들을 뽑아낸다.
		Iterator<String> it = request.getFileNames();
		Map<String, TeacherRegistDTO> map = new HashMap<String, TeacherRegistDTO>();
		
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
				dto.setProAccounting(regService.makeBK(fileName, tNo));
			}
		} // while end
		if (tDetailsumnail.length() != 0)
			// 문자열의 마지막 콤마 지우기
			tDetailsumnail = tDetailsumnail.substring(0, tDetailsumnail.length() - 1);
	  
		if(tDetailsumnail !="") {
		dto.settDetailsumnail(tDetailsumnail);
	   }
		
	   //코드 재사용을 높이기위해 map으로 넘긴다.
		map.put("dto", dto);
		regService.insertDTO(map);
		
		return "mypage/teacher/teacherBase";
	}

	
	
	
	
	@GetMapping("teacherIn")
	public String teacherIn(Model model) {
		model.addAttribute("list",si.readFiveT());
		model.addAttribute("mainContent",si.mainContentT());
		return "teacher/user/teacherIn";
	}
}

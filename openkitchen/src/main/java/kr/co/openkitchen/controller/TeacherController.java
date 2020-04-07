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
	       
		// form data에 저장된 name들을 뽑아낸다.
		Iterator<String> it = request.getFileNames();
		String tDetailsumnail = ""; 
		String filePath;
		Map<String, TeacherRegistDTO> map = new HashMap<String, TeacherRegistDTO>();
		

		int count = 1;
		while (it.hasNext()) {
			String fileName = it.next();
			System.out.println("fileName:     "+fileName);
			// blob 또는 기존 형식으로 보내온 파일을 변환시킴
			MultipartFile mFile = request.getFile(fileName);
			// 이미지 저장 시킬 위치 + 파일명을 뽑아옴+
			filePath = regService.acceptImg(fileName, count);
			// 파일을 지정된 경로에 저장하기
			regService.makeFile(filePath, mFile);
			// dto에 저장하기 위해 ds만 뽑아온다.
			if (regService.makeDS(fileName, count) != "MS") {
				tDetailsumnail += regService.makeDS(fileName, count) + ",";
				count++;
				System.out.println("밖에 쪽 count:" + count);
			} else {
            //sumnail  				
				String tMainsumnail = regService.makeMS(fileName);
				dto.settMainsumnail(tMainsumnail);
			}
		} // while end
		if (tDetailsumnail.length() != 0)
			// 문자열의 마지막 콤마 지우기
			tDetailsumnail = tDetailsumnail.substring(0, tDetailsumnail.length() - 1);
	   if(tDetailsumnail !="") {
		dto.settDetailsumnail(tDetailsumnail);
	   }
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

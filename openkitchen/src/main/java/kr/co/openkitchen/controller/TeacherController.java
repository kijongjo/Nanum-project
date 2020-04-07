package kr.co.openkitchen.controller;

import java.io.IOException;
import java.util.List;

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

import kr.co.openkitchen.dto.TeacherIndexDTO;
import kr.co.openkitchen.service.TserviceInter;
import lombok.Setter;

@Controller
@RequestMapping("mypage")
public class TeacherController {
	
	@Setter(onMethod = @__({ @Autowired }))
	TserviceInter si;
	
	
	
	// teacherD view로 가는 프로그램
	@RequestMapping("teacherD")
	public String teacherD(@RequestParam("no")int tNo, Model model) {
		System.out.println(tNo);
		model.addAttribute("detailTeacher", si.readDetailT(tNo));
		System.out.println(si.readDetailT(tNo));
		return "teacher/user/teacherD";
	}
	

	@GetMapping("teacherIn")
	public String teacherIn(Model model) {
		model.addAttribute("list",si.readFiveT());
		model.addAttribute("mainContent",si.mainContentT());
		return "teacher/user/teacherIn";
	}
	

	@RequestMapping(value = "/moreT", method = RequestMethod.GET, produces = "application/text; charset=utf8")
	@ResponseBody
	public String moreT(@RequestParam("count") int count) {
		System.out.println("더보기 시 보여질 갯수:" + count);
		List<TeacherIndexDTO> list = si.moreTeacher(count);
		
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

}

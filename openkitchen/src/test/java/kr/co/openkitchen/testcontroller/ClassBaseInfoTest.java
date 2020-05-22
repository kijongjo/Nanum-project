package kr.co.openkitchen.testcontroller;

import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.mock.web.MockMultipartFile;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.context.WebApplicationContext;

import com.fasterxml.jackson.databind.ObjectMapper;

import kr.co.openkitchen.controller.RestfulUserController;
import kr.co.openkitchen.dto.ClassRegistDTO;
//db rollback transactional
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml","file:src/main/webapp/WEB-INF/spring/appServlet/spring-ctx.xml"})
@WebAppConfiguration
@EnableTransactionManagement
public class ClassBaseInfoTest {
	
	 private WebApplicationContext context; // MockMvc 객체 생성을 위한 context
	 private MockMvc mockMvc;
     ObjectMapper mapper;
	
     
    @Autowired
	 RestfulUserController restfulUserController;
	
    
    
	 @Before
	 public void setUp() {
		 this.mockMvc = MockMvcBuilders.standaloneSetup(restfulUserController).build();     // test를 위한 MockMvc 객체 생성. testController 1개만 주입.
		 mapper=new ObjectMapper();
	    

	 }
	 
	 @Test
	 @Transactional   
	 public void test() throws Exception{
		 MockMultipartFile firstFile= new MockMultipartFile("C-DS-TYPE1", "testDS", "image/png","dd".getBytes());
		 ClassRegistDTO dto = new ClassRegistDTO();
		 dto.settNo(99);
		 dto.setcHashtag("가위,케익");
		 dto.setcLongintro("긴 자기소개 ");
		 dto.setcMaxrecruitperson(5);
		 dto.setcMinrecruitperson(3);
		 dto.setcName("딸기케익수업");
		 dto.setcNo(25);
		 dto.setcPerstatus("신청");
		 dto.setcPrice(5000);
		 dto.setcReference("수업료");
		 dto.setcRegdate("2020/02/05");
		 dto.setcShortintro("프리지에 케익");
		 dto.setcTema("밥상");
		 dto.setcType("만원");
		 
		 mockMvc.perform(MockMvcRequestBuilders.multipart("/mypage/users/teachers/99/classBaseInfo")
				 .file(firstFile)
				 .contentType(MediaType.MULTIPART_FORM_DATA)
				 .content(mapper.writeValueAsString(dto)))
		 .andDo(print())
		 .andExpect(status().isOk());
		 
	 }
	 
}

package kr.co.openkitchen.testcontroller;

import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import java.io.FileInputStream;

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



//by 조기종 
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml","file:src/main/webapp/WEB-INF/spring/appServlet/spring-ctx.xml"})
@WebAppConfiguration	
@EnableTransactionManagement
public class TeacherBaseInfoTest {
	
	 private WebApplicationContext context; // MockMvc 객체 생성을 위한 context
	 private MockMvc mockMvc;
	 ObjectMapper mapper;
	 
	 @Autowired
	 RestfulUserController restfulUserController;
	
	 
	 // test를 위한 MockMvc 객체 생성. testController 1개만 주입.
	 @Before
	 public void setUp() {
		 this.mockMvc = MockMvcBuilders.standaloneSetup(restfulUserController).build();     
		 
		 mapper=new ObjectMapper();

	 }
	 
	 @Test
	 @Transactional
	 public void test() throws Exception{
		 FileInputStream dsfis = new FileInputStream("C:\\Users\\Jopc\\Desktop\\Info\\123123.png");
		 FileInputStream msfis = new FileInputStream("C:\\Users\\Jopc\\Desktop\\Info\\c99-ms-01.jpg.png");
		 FileInputStream regfis = new FileInputStream("C:\\Users\\Jopc\\Desktop\\Info\\ci_genesis.jpg");
		 FileInputStream accountfis = new FileInputStream("C:\\Users\\Jopc\\Desktop\\Info\\ci_hyundai.jpg");
		
		
		 MockMultipartFile ds= new MockMultipartFile("DS-TYPE1",dsfis);
		 MockMultipartFile ms= new MockMultipartFile("MS", msfis);
		 MockMultipartFile proRegImg= new MockMultipartFile("proRegImg", regfis);
		 MockMultipartFile proAccounting= new MockMultipartFile("proAccountIng",accountfis);
		 
			 
		 
		 mockMvc.perform(MockMvcRequestBuilders.multipart("/mypage/users/99/teacherBaseInfo")
				 .file(ds)
				 .file(ms)
				 .file(proRegImg)
				 .file(proAccounting)
				 .contentType(MediaType.MULTIPART_FORM_DATA)
				 .param("tNo","122")
				 .param("ProAccount", "/resources/img/bankimg/18bank.jpg")
				 .param("ProAccounting", "/resources/img/regimg/16reg.jpg")
				 .param("ProBank", "신한")
				 .param("ProCeo", "이지현")
				 .param("ProName", "박선호")
				 .param("ProNo", "122")
				 .param("ProRegimg", "/resources/img/regimg/22reg.jpg")
				 .param("ProType", "2")
				 .param("tArea", "서울")
				 .param("tCareer", "경양식 전문점 2년 경영")
				 .param("tDetailsumnail", "/resources/img/teacherImg/T100-DS-01")
				 .param("tExpert", "음료,티,웰빙,오가닉,스타일링")
				 .param("tExpertname", "건강주스 전문가")
				 .param("tHavenickname", "박선호")
				 .param("tLongintro", "한식요리 연구가")
				 .param("tMainsumnail", "/resources/img/teacherimg/t23-ms-01.jpg")
				 .param("TshortIntro", " 대기업 중견기업 운영총괄 경력자")
				 .param("tRegdate", "19/11/08")
				 .param("tPerstatus", "신청")				 
				  ).andDo(print()).andExpect(status().isOk());
		 
	 }
	 
}

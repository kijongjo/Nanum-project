package kr.co.openkitchen.testcontroller;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import java.util.ArrayList;
import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.context.WebApplicationContext;

import com.fasterxml.jackson.databind.ObjectMapper;

import kr.co.openkitchen.controller.RestfulUserController;
import kr.co.openkitchen.dto.ClassRegistDtoR;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml","file:src/main/webapp/WEB-INF/spring/appServlet/spring-ctx.xml"})
@WebAppConfiguration	
@EnableTransactionManagement
public class ClassSpaceRegistTest {
	
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
		 ClassRegistDtoR dto = new ClassRegistDtoR();
		 ClassRegistDtoR dto1 = new ClassRegistDtoR();
		 dto.setcNo(100);
		 dto.setRecDate("2020/10/28");
		 dto.setRecNo(60);
		 dto.setRecPerstatus("신청");
		 dto.setRenNo(99);
		 dto1.setcNo(100);
		 dto1.setRecDate("2020/10/28");
		 dto1.setRecNo(61);
		 dto1.setRecPerstatus("신청");
		 dto1.setRenNo(100);
		 List<ClassRegistDtoR> list = new ArrayList<ClassRegistDtoR>();
		 list.add(dto);
		 list.add(dto1);
		 mockMvc.perform(post("/mypage/users/teachers/99/100/classSpaceRegist")
				 .contentType(MediaType.APPLICATION_JSON)
				 .content(mapper.writeValueAsString(list)
				 )).andDo(print()).andExpect(status().isOk());
		                   
		 
	 }
	 
}

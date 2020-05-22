package kr.co.openkitchen.testservice;

import static org.mockito.Mockito.doNothing;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import java.util.ArrayList;
import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import kr.co.openkitchen.classes.Util;
import kr.co.openkitchen.dao.ClassRegistDaoSch;
import kr.co.openkitchen.dto.ClassRegistDtoSch;
import kr.co.openkitchen.service.RegistClassImpleSch;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml",
		"file:src/main/webapp/WEB-INF/spring/appServlet/spring-ctx.xml" })
@WebAppConfiguration
public class RegistClassImpleSchTest {

	@InjectMocks
	RegistClassImpleSch service;

	@Mock
	ClassRegistDaoSch dao;
	

	@Before
	public void setUp() {
		MockitoAnnotations.initMocks(this);

	}

	@Test
	public void testService() {
		ClassRegistDtoSch dto = new ClassRegistDtoSch();
		ClassRegistDtoSch dto2 = new ClassRegistDtoSch();
		
		dto.setcNo(25);
		dto.setlLeasedate("2020/05/01");
		dto.setlLeasetime("오전");
	
		dto2.setcNo(24);
		dto2.setlLeasedate("2020/05/01");
		dto2.setlLeasetime("오전");
		List<ClassRegistDtoSch> one1=new ArrayList<ClassRegistDtoSch>();
		one1.add(dto);
		one1.add(dto2);
		
		when(dao.selectOne(120)).thenReturn(Util.packingSch(one1));
	    
		
		service.selectOne(120);
        verify(dao).selectOne(120);
    
	}
	
	@Test
	public void testService2() {
		
		doNothing().when(dao).insertDTO(133);
		service.insertDTO(133);
		verify(dao).insertDTO(133);
	}
	
	 
}

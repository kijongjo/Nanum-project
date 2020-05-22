package kr.co.openkitchen.testservice;

import static org.mockito.Mockito.doNothing;
import static org.mockito.Mockito.doThrow;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import java.util.ArrayList;
import java.util.List;

import org.junit.Assert;
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
import kr.co.openkitchen.dao.ClassRegistDAO;
import kr.co.openkitchen.dto.ClassRegistDTO;
import kr.co.openkitchen.dto.CompleteClassDTO;
import kr.co.openkitchen.dto.StandByClassDTO;
import kr.co.openkitchen.service.RegistClassImple;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml",
		"file:src/main/webapp/WEB-INF/spring/appServlet/spring-ctx.xml" })
@WebAppConfiguration
public class RegistClassImpleSTest {

	@InjectMocks
	RegistClassImple service;

	@Mock
	ClassRegistDAO dao;
	

	@Before
	public void setUp() {
		MockitoAnnotations.initMocks(this);

	}

	@Test
	public void testService() {
	
		when(dao.selectOne(99)).thenReturn(Util.packing(25));
		
		Assert.assertNotNull(service.selectOne(99).getT());
		verify(dao).selectOne(99);

    
	}
	@Test
	public void testService2() {
		
		doNothing().when(dao).insertDTO(133);
		service.insertDTO(133);
		verify(dao).insertDTO(133);
	}
	
	
	 
}

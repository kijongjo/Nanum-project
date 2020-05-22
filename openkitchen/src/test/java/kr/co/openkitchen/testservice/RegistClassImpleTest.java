package kr.co.openkitchen.testservice;

import static org.junit.Assert.assertTrue;
import static org.mockito.Mockito.doNothing;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

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
import kr.co.openkitchen.service.RegistClassImple;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml",
		"file:src/main/webapp/WEB-INF/spring/appServlet/spring-ctx.xml" })
@WebAppConfiguration
public class RegistClassImpleTest {

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
        //given
		when(dao.selectOne(99)).thenReturn(Util.packing(25));
        //when
		service.selectOne(99);
		//then
		verify(dao).selectOne(99);
               
	}
	@Test
	public void testService2() {
		String name= service.createImgNameNpath("C-DS-TYPE1", 1, 25);
		assertTrue(name.equals("resources/img/classimg/c25-DS-01.jpg"));
	
               
	}
	
	@Test
	public void testService3() {
		String name= service.namingDS("C-DS-TYPE1", 1, 25);
		String name1= service.namingMS("C-MS",25);
		assertTrue(name.equals("/resources/img/classimg/c25-DS-01"));
		assertTrue(name1.equals("/resources/img/classimg/c25-MS-01"));
	
               
	}
    @Test
    public void testService4() {
    	doNothing().when(dao).insertDTO(133);;
		service.insertDTO(133);
		verify(dao).insertDTO(133);
    }

}

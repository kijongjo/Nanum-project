package kr.co.openkitchen.testservice;

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
import kr.co.openkitchen.dao.MypageCookBookDAO;
import kr.co.openkitchen.dto.CompleteClassDTO;
import kr.co.openkitchen.dto.CookBookDTO;
import kr.co.openkitchen.service.MypageCookBook;


//by 조기종 예약CLASSList 요청 UnitTEST_200422
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml",
		"file:src/main/webapp/WEB-INF/spring/appServlet/spring-ctx.xml" })
@WebAppConfiguration
public class MypageCookBookTest {

	@InjectMocks
	MypageCookBook service;

	@Mock
	MypageCookBookDAO dao;
	
	@Before
	public void setUp() {
		MockitoAnnotations.initMocks(this);

	}

	@Test
	public void testService() {
		CookBookDTO dto = new CookBookDTO();
		CookBookDTO dto2 = new CookBookDTO();
		dto.setcMainsumnail("resources/1/ms-1");
		dto.setcName("가르셰");
		dto.setcNo(25);
		
		dto2.setcMainsumnail("resources/2/ms-2");
		dto2.setcName("가르풍");
		dto2.setcNo(24);
		List<CookBookDTO> one1=new ArrayList<CookBookDTO>();
		one1.add(dto);
		one1.add(dto2);
		
		when(dao.selectOne(99)).thenReturn(Util.packingCook(one1));
		List<CookBookDTO> one=service.selectOne(99).getCbd();
        Assert.assertNotNull(one.get(0).getcName());
        verify(dao).selectOne(99);
    
	}
	
	
	 
}

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
import kr.co.openkitchen.dao.MypageCookRefundDAO;
import kr.co.openkitchen.dto.CompleteClassDTO;
import kr.co.openkitchen.dto.CookBookDTO;
import kr.co.openkitchen.dto.CookRefundDTO;
import kr.co.openkitchen.service.MypageCookRefund;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml",
		"file:src/main/webapp/WEB-INF/spring/appServlet/spring-ctx.xml" })
@WebAppConfiguration
public class MypageCookRefundTest {

	@InjectMocks
	MypageCookRefund service;

	@Mock
	MypageCookRefundDAO dao;
	

	@Before
	public void setUp() {
		MockitoAnnotations.initMocks(this);

	}

	@Test
	public void testService() {
		CookRefundDTO dto = new CookRefundDTO();
		CookRefundDTO dto2 = new CookRefundDTO();
		dto.setcMainsumnail("resources/1/ms-1");
		dto.setcName("가르셰");
		dto.setcNo(25);
		dto.setlLeasedate("2020/05/01");
		dto.setlLeasetime("오전");
		dto2.setcMainsumnail("resources/2/ms-2");
		dto2.setcName("가르풍");
		dto2.setcNo(24);
		dto2.setlLeasedate("2020/05/01");
		dto2.setlLeasetime("오전");
		List<CookRefundDTO> one1=new ArrayList<CookRefundDTO>();
		one1.add(dto);
		one1.add(dto2);
		
		
		when(dao.selectOne(99)).thenReturn(Util.packingCookR(one1));
		List<CookRefundDTO> one=service.selectOne(99).getCrd();
        Assert.assertNotNull(one.get(0).getcName());
        verify(dao).selectOne(99);
    
	}
	
	
	 
}

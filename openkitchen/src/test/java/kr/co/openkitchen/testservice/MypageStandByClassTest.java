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
import kr.co.openkitchen.dao.MypageStandByClassDAO;
import kr.co.openkitchen.dto.CompleteClassDTO;
import kr.co.openkitchen.dto.CookBookDTO;
import kr.co.openkitchen.dto.StandByClassDTO;
import kr.co.openkitchen.service.MypageStandByClass;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml",
		"file:src/main/webapp/WEB-INF/spring/appServlet/spring-ctx.xml" })
@WebAppConfiguration
public class MypageStandByClassTest {

	@InjectMocks
	MypageStandByClass service;

	@Mock
	MypageStandByClassDAO dao;

	@Before
	public void setUp() {
		MockitoAnnotations.initMocks(this);

	}

	@Test
	public void testService() {
		StandByClassDTO dto = new StandByClassDTO();
		StandByClassDTO dto2 = new StandByClassDTO();
		dto.setcMainsumnail("resources/1/ms-1");
		dto.setcName("가르셰");
		dto.setcNo(25);
		
		dto2.setcMainsumnail("resources/2/ms-2");
		dto2.setcName("가르풍");
		dto2.setcNo(24);
		List<StandByClassDTO> one1 = new ArrayList<StandByClassDTO>();
		one1.add(dto);
		one1.add(dto2);

		when(dao.selectOne(99)).thenReturn(Util.packingStandBy(one1));
		List<StandByClassDTO> one = service.selectOne(99).getSbcd();
		Assert.assertNotNull(one.get(0).getcName());
		verify(dao).selectOne(99);

	}

}

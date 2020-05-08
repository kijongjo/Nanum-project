package kr.co.openkitchen.dao;

import java.util.List;
import java.util.Map;

import kr.co.openkitchen.dto.ClassIndexDTO;
import kr.co.openkitchen.dto.DetailCScheDTO;
import kr.co.openkitchen.dto.DetailClassDTO;
import kr.co.openkitchen.dto.PaymentClassDTO;

public interface CDaoInter {
	public List<ClassIndexDTO> selectFive();
	public List<ClassIndexDTO> selectContentC();
	public DetailClassDTO selectDetailC(int cNo);
	public List<DetailCScheDTO> selectDetailCSche(Map<String, String> map);
	public List<ClassIndexDTO> moreClass(int count);
	public PaymentClassDTO selectPaymentC(int recNo);
	public int insertPayment(Map<String, Object> map);

}

package kr.co.openkitchen.service;

import java.util.List;
import java.util.Map;

import kr.co.openkitchen.dto.DetailSScheDTO;
import kr.co.openkitchen.dto.DetailSpaceDTO;
import kr.co.openkitchen.dto.SpaceIndexDTO;
import kr.co.openkitchen.dto.PaymentSpaceDTO;

public interface SserviceInter {
	public List<SpaceIndexDTO> readFiveS();
	public List<SpaceIndexDTO> mainContentS();
	public List<SpaceIndexDTO> moreSpace(int count);
	public DetailSpaceDTO readDetailS(int sNo);
	public List<DetailSScheDTO> readDetailSSche(Map<String, Object> map);
	public List<PaymentSpaceDTO> readPaymentS(Map<String, Object> map);
	public int addPaymentSData(Map<String, Object> map);
}
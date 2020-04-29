package kr.co.openkitchen.classes;

import java.util.List;

import kr.co.openkitchen.dto.ClassRegistDtoL;
import kr.co.openkitchen.dto.ClassRegistDtoR;
import kr.co.openkitchen.dto.ClassRegistDtoSch;
import kr.co.openkitchen.dto.CookBookDTO;
import kr.co.openkitchen.dto.CookRefundDTO;
import kr.co.openkitchen.dto.OngoingClassDTO;
import kr.co.openkitchen.dto.StandByClassDTO;

//용도: 다양한 return타입을 받기 위함. 코드 재사용성을 높이기 위함
//구린네가 심하게 나는데 일단 Generalization 시키긴함. 이거 안고치면 개털릴듯
public class GenericOne<T> {
	private T genericOne;
	private List<ClassRegistDtoSch> crdsch;
	private List<ClassRegistDtoL> crdl;
	private List<ClassRegistDtoR> crdr;
	private List<CookBookDTO> cbd;
	private List<CookRefundDTO> crd;
	private List<StandByClassDTO> sbcd;
	private List<OngoingClassDTO> ocd;
	
    
    
	

	public T getT() {
		return genericOne;
	}

	public void setT(T genericOne) {
		this.genericOne = genericOne;
	}

	public List<ClassRegistDtoL> getCrdl() {
		return crdl;
	}

	public void setCrdl(List<ClassRegistDtoL> crdl) {
		this.crdl =crdl;
	}

	public List<ClassRegistDtoR> getCrdr() {
		return crdr;
	}

	public void setCrdr(List<ClassRegistDtoR> crdr) {
		this.crdr = crdr;
	}

	public List<ClassRegistDtoSch> getCrdsch() {
		return crdsch;
	}

	public void setCrdsch(List<ClassRegistDtoSch> crdsch) {
		this.crdsch = crdsch;
	}

	public List<CookBookDTO> getCbd() {
		return cbd;
	}

	public void setCbd(List<CookBookDTO> cbd) {
		this.cbd = cbd;
	}

	public List<CookRefundDTO> getCrd() {
		return crd;
	}

	public void setCrd(List<CookRefundDTO> crd) {
		this.crd = crd;
	}

	public List<StandByClassDTO> getSbcd() {
		return sbcd;
	}

	public void setSbcd(List<StandByClassDTO> sbcd) {
		this.sbcd = sbcd;
	}

	public List<OngoingClassDTO> getOcd() {
		return ocd;
	}

	public void setOcd(List<OngoingClassDTO> ocd) {
		this.ocd = ocd;
	}
	
	
	
	
	



	
	

	
	

}

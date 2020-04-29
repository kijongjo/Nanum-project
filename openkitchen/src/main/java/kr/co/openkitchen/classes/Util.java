package kr.co.openkitchen.classes;

import java.util.List;

import kr.co.openkitchen.dto.ClassRegistDtoL;
import kr.co.openkitchen.dto.ClassRegistDtoR;
import kr.co.openkitchen.dto.ClassRegistDtoSch;
import kr.co.openkitchen.dto.CompleteClassDTO;
import kr.co.openkitchen.dto.CookBookDTO;
import kr.co.openkitchen.dto.CookRefundDTO;
import kr.co.openkitchen.dto.OngoingClassDTO;
import kr.co.openkitchen.dto.StandByClassDTO;

public class Util {

	 public static <T> GenericOne<T> packing(T t){
		 GenericOne<T> genericOne = new GenericOne<T>();
		 genericOne.setT(t);
		 return genericOne;
	 }
	
	 
	 public static <T> GenericOne<T> packing(List<ClassRegistDtoL> t){
		 GenericOne<T> genericOne = new GenericOne<T>();
		 genericOne.setCrdl(t);
		 return genericOne;
	 }
	 public static <T> GenericOne<T> packingR(List<ClassRegistDtoR> t){
		 GenericOne<T> genericOne = new GenericOne<T>();
		 genericOne.setCrdr(t);
		 return genericOne;
	 }
	 public static <T> GenericOne<T> packingSch(List<ClassRegistDtoSch> t){
		 GenericOne<T> genericOne = new GenericOne<T>();
		 genericOne.setCrdsch(t);
		 return genericOne;
	 }
	 public static <T> GenericOne<T> packingCook(List<CookBookDTO> t){
		 GenericOne<T> genericOne = new GenericOne<T>();
		 genericOne.setCbd(t);
		 return genericOne;
	 }
	 public static <T> GenericOne<T> packingCookR(List<CookRefundDTO> t){
		 GenericOne<T> genericOne = new GenericOne<T>();
		 genericOne.setCrd(t);
		 return genericOne;
	 } 
	 public static <T> GenericOne<T> packingStandBy(List<StandByClassDTO> t){
		 GenericOne<T> genericOne = new GenericOne<T>();
		 genericOne.setSbcd(t);
		 return genericOne;
	 }
	 public static <T> GenericOne<T> packingOngoing(List<OngoingClassDTO> t){
		 GenericOne<T> genericOne = new GenericOne<T>();
		 genericOne.setOcd(t);
		 return genericOne;
	 }
	 public static <T> GenericOne<T> packingCompleteC(List<CompleteClassDTO> t){
		 GenericOne<T> genericOne = new GenericOne<T>();
		 genericOne.setCcd(t);
		 return genericOne;
	 }
	 
	
	 
}

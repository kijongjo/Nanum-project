package kr.co.openkitchen.service;

import org.springframework.web.multipart.MultipartFile;

import kr.co.openkitchen.classes.GenericOne;
import kr.co.openkitchen.classes.RegistServiceTypeF;

//by 조기종 파일을 다루는 RegistServiceInterfaceFile_200321
public interface RegistServiceInterF {
    
	//Factory Design Pattern 각 구현 Class 마다 반환하는 ENUM 타입이 다름
	RegistServiceTypeF getServiceType();

	// 이미지 파일 이름을 받아와서 경로와 이름을 조합
	public String createImgNameNpath(String fileName, int count, int tNo);

	// 이미지 파일을 지정된 경로에 저장
	public void registerFileToS3(String filePath, MultipartFile mFile);

	// DetailSumnail 이름 짓기 -이름을 배열 형태로 이음
	public String namingDS(String fileName, int count, int tNo);

	// MainSumnail 이름 짓기
	public String namingMS(String fileName, int tNo);

	// 은행 작명
	public default String namingBK(String fileName, int no) {
		String resourceName = "";
		if (fileName.equals("proRegImg")) {

			resourceName = "/resources/img/regimg/" + no + "reg.jpg";

		} else {

			resourceName = "/resources/img/bankimg/" + no + "bank.jpg";

		}
		return resourceName;

	};

	// generic type으로 줘서 teacherDTO,spaceDTO,classDTO
	public <T> void insertDTO(T dto);

	// 번호를 가져오든 dto를 가져오든 아무거나 가져올 수 있는 method
	public <T> GenericOne<T> selectOne(T genericOne);

}

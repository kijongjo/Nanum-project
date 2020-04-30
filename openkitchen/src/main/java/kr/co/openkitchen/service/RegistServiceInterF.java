package kr.co.openkitchen.service;

import org.springframework.web.multipart.MultipartFile;

import kr.co.openkitchen.classes.GenericOne;
import kr.co.openkitchen.classes.RegistServiceTypeF;

//파일을 다루는 RegistServiceInterfaceFile
public interface RegistServiceInterF {

	RegistServiceTypeF getServiceType();
	
	// 이미지 파일 이름을 받아와서 경로와 이름을 조합
	public String acceptImg(String fileName, int count, int tNo);

	// 이미지 파일을 지정된 경로에 저장
	public void makeFile(String filePath, MultipartFile mFile);

	// 이름을 배열 형태로 이음
	public String makeDS(String fileName, int count, int tNo);

	// 메인 이미지 파일
	public String makeMS(String fileName, int tNo);

	// 은행 있는 사람만
	public default String makeBK(String fileName, int no) {
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

	public default <T> void applyDTO(T dto) {
		// 각자 imple에서 dao를 이용해 기능 구현

	};

	// 번호를 가져오든 dto를 가져오든 아무거나 가져올 수 있는 method
	public <T> GenericOne<T> selectOne(T genericOne);

}

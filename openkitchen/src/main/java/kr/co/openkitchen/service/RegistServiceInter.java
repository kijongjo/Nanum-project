package kr.co.openkitchen.service;


import java.util.Map;

import org.springframework.web.multipart.MultipartFile;

public interface RegistServiceInter {
	
	//이미지 파일 이름을 받아와서 경로와 이름을 조합 
	public String acceptImg(String fileName,int count,int tNo);
	//이미지 파일을 지정된 경로에 저장 
	public void makeFile(String filePath,MultipartFile mFile);
    //이름을 배열 형태로 이음
	public String makeDS(String fileName,int count,int tNo);
	public String makeMS(String fileName,int tNo);
	//generic type으로 줘서 teacherDTO,spaceDTO,classDTO
	public <T> void insertDTO(Map<String, T> map);
	public String makeBK(String fileName,int tNo);
    
}

package kr.co.openkitchen.service;

import javax.annotation.Resource;
import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import kr.co.openkitchen.classes.GenericOne;
import kr.co.openkitchen.classes.RegistServiceTypeF;
import kr.co.openkitchen.classes.S3ClientFactory;
import kr.co.openkitchen.dao.RegisterDaoInter;

//선생님 등록에 대한 service 

@Service
public class RegistTeacherImple implements RegistServiceInterF {
	@Autowired
	ServletContext servletContext;

	@Resource(name="teacherRegistDAO")
	RegisterDaoInter dao;

	@Override
	public RegistServiceTypeF getServiceType() {
		// TODO Auto-generated method stub
		return RegistServiceTypeF.REGISTTEACHERIMPLE;
	}
	
	// 이미지를 받아서 이름을 줌.
	@Override
	public String acceptImg(String fileName, int count, int tNo) {

		String filePath;
		String resourceName;
		String resourcesPath;

		if (fileName.equals("DS-TYPE1")) {
			resourceName = "T" + tNo + "-DS-0" + count;
			resourcesPath = "resources/img/teacherimg";
			filePath = resourcesPath + "/" + resourceName + ".jpg";
			System.out.println("filePath  :  " + filePath);
		} else if (fileName.equals("MS")) {
			resourceName = "T" + tNo + "-MS-01";
			resourcesPath = "resources/img/teacherimg";
			filePath = resourcesPath + "/" + resourceName + ".jpg";
			System.out.println("filePath  :  " + filePath);
		} else if (fileName.equals("proRegImg")) {
			resourceName = tNo + "reg.jpg";
			resourcesPath = "resources/img/regimg";
			filePath = resourcesPath + "/" + resourceName + ".jpg";
			System.out.println("filePath  :  " + filePath);
		} else if (fileName.equals("proAccountIng")) {
			resourceName = tNo + "bank.jpg";
			resourcesPath = "resources/img/bankimg";
			filePath = resourcesPath + "/" + resourceName + ".jpg";
			System.out.println("filePath  :  " + filePath);
		} else {
			return "";
		}

		return filePath;

	}

	@Override
	public void makeFile(String filePath, MultipartFile mFile) {
		// File 경로를 넣어주고 변형시킨 파일을 경로에 넣어준다.
         System.out.println("파일 경로"+filePath);
		 S3ClientFactory s3Client = new S3ClientFactory();
		 s3Client.uploadFile(filePath, mFile);
		 System.out.println("s3 요청 완료");
		
	}// makeFile end

	@Override
	public String makeDS(String fileName, int count, int tNo) {
		System.out.println(fileName);
		String resourceName;
		if (fileName.equals("DS-TYPE1")) {
			resourceName = "/resources/img/teacherImg/T" + tNo + "-DS-0" + count;

		} else if (fileName.equals("MS")) {
			return "MS";

		} else {
			resourceName = "/resources/img/teacherImg/T" + tNo + "-DS-0" + count;

		}
		System.out.println("makeDS" + resourceName);
		return resourceName;
	}

	@Override
	public String makeMS(String fileName, int tNo) {
		// TODO Auto-generated method stub
		return "/resources/img/teacherImg/T" + tNo + "-MS-01";
	}

	
	@Override
	public <T> void insertDTO(T dto) {
		
		System.out.println(dto.toString());
		dao.insertDTO(dto);
	}

	 @Override
	public <T> void applyDTO(T dto) {
		dao.insertDTO(dto);
	}
    
	 @Override
	public <T> GenericOne<T> selectOne(T genericOne) {
     //등록 페이지로 넘어올때 필요한 정보가 부족해서 남겨둔다.
		return null;
	}

 

}

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

@Service
public class RegistTeacherImpleS implements RegistServiceInterF {
	@Autowired
	ServletContext servletContext;

	@Resource(name = "teacherRegistDaoS")
	RegisterDaoInter dao;

	@Override
	public RegistServiceTypeF getServiceType() {
		// TODO Auto-generated method stub
		return RegistServiceTypeF.REGISTTEACHERIMPLES;
	}

	@Override
	public String createImgNameNpath(String fileName, int count, int hNo) {
		String filePath;
		String resourceName;
		String resourcesPath;

		if (fileName.equals("S-DS-TYPE1")) {
			resourceName = "S" + hNo + "-DS-0" + count;
			resourcesPath = "/resources/img/spaceimg";
			filePath = resourcesPath + "/" + resourceName + ".jpg";
			System.out.println("filePath  :  " + filePath);
		} else if (fileName.equals("MS")) {
			resourceName = "S" + hNo + "-MS-01";
			resourcesPath = "/resources/img/spaceimg";
			filePath = resourcesPath + "/" + resourceName + ".jpg";
			System.out.println("filePath  :  " + filePath);
		} else {
			resourceName = "S" + hNo + "-DS-0" + count;
			resourcesPath = "/resources/img/spaceimg";
			filePath = resourcesPath + "/" + resourceName + ".jpg";
			System.out.println("filePath  :  " + filePath);
		}

		return filePath;

	}

	@Override
	public <T> void insertDTO(T dto) {
		System.out.println("TeacherRegistDaoS :    " + dto.toString());
		dao.insertDTO(dto);

	}

	@Override
	public String namingDS(String fileName, int count, int hNo) {
		System.out.println(fileName);
		String resourceName;
		if (fileName.equals("S-DS-TYPE1")) {
			resourceName = "/resources/img/spaceimg/S" + hNo + "-DS-0" + count;

		} else if (fileName.equals("S-MS")) {
			return "S-MS";

		} else {
			resourceName = "/resources/img/spaceimg/S" + hNo + "-DS-0" + count;

		}
		System.out.println("makeDS" + resourceName);
		return resourceName;
	}

	@Override
	public void registerFileToS3(String filePath, MultipartFile mFile) {
		// File 경로를 넣어주고 변형시킨 파일을 경로에 넣어준다.
		System.out.println("파일 경로" + filePath);
		S3ClientFactory s3Client = new S3ClientFactory();
		s3Client.uploadFile(filePath, mFile);
		System.out.println("s3 요청 완료");

	}

	@Override
	public String namingMS(String fileName, int hNo) {
		// TODO Auto-generated method stub
		return "/resources/img/spaceimg/S" + hNo + "-MS-01";
	}

	@Override
	public <T> GenericOne<T> selectOne(T genericOne) {
		// 등록 페이지로 넘어올때 필요한 정보가 부족해서 남겨둔다.
		return null;
	}

}

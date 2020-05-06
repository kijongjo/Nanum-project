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
public class RegistClassImple implements RegistServiceInterF {
	@Autowired
	ServletContext servletContext;

	@Resource(name = "classRegistDAO")
	RegisterDaoInter dao;

	@Override
	public RegistServiceTypeF getServiceType() {
		// TODO Auto-generated method stub
		return RegistServiceTypeF.REGISTCLASSIMPLE;
	}

	@Override
	public String createImgNameNpath(String fileName, int count, int cNo) {
		String filePath;
		String resourceName;
		String resourcesPath;

		if (fileName.equals("C-DS-TYPE1")) {
			resourceName = "c" + cNo + "-DS-0" + count;
			resourcesPath = "resources/img/classimg";
			filePath = resourcesPath + "/" + resourceName + ".jpg";
			System.out.println("filePath  :  " + filePath);
		} else if (fileName.equals("C-MS")) {
			resourceName = "c" + cNo + "-MS-01";
			resourcesPath = "resources/img/classimg";
			filePath = resourcesPath + "/" + resourceName + ".jpg";
			System.out.println("filePath  :  " + filePath);
		} else {
			resourceName = "c" + cNo + "-DS-0" + count;
			resourcesPath = "resources/img/classimg";
			filePath = resourcesPath + "/" + resourceName + ".jpg";
			System.out.println("filePath  :  " + filePath);
		}

		return filePath;

	}

	@Override
	public <T> void insertDTO(T dto) {
		dao.insertDTO(dto);
	}

	@Override
	public String namingDS(String fileName, int count, int cNo) {
		System.out.println(fileName);
		String resourceName;
		if (fileName.equals("C-DS-TYPE1")) {
			resourceName = "/resources/img/classimg/c" + cNo + "-DS-0" + count;

		} else if (fileName.equals("C-MS")) {
			return "C-MS";

		} else {
			resourceName = "/resources/img/classimg/c" + cNo + "-DS-0" + count;

		}
		System.out.println("makeDS" + resourceName);
		return resourceName;
	}

	@Override
	public void registerFileToS3(String filePath, MultipartFile mFile) {
		S3ClientFactory s3Client = new S3ClientFactory();
		s3Client.uploadFile(filePath, mFile);
	}

	@Override
	public String namingMS(String fileName, int cNo) {
		// TODO Auto-generated method stub
		return "/resources/img/classimg/c" + cNo + "-MS-01";
	}

	@Override
	public <T> GenericOne<T> selectOne(T genericOne) {

		return dao.selectOne(genericOne);
	}

}

package kr.co.openkitchen.service;

import java.io.File;
import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import kr.co.openkitchen.dao.RegisterDaoInter;
import lombok.Setter;

@Service
public class RegistTeacherImpleS implements RegistServiceInter {
	@Autowired
	ServletContext servletContext;

	@Resource(name="teacherRegistDaoS")
	RegisterDaoInter dao;
	
	
	@Override
	public String acceptImg(String fileName, int count, int hNo) {
		String filePath;
		String resourceName;
		String resourcesPath;

		if (fileName.equals("S-DS-TYPE1")) {
			resourceName = "S" + hNo + "-DS-0" + count;
			resourcesPath = servletContext.getRealPath("/resources/img/spaceimg");
			filePath = resourcesPath + "/" + resourceName + ".jpg";
			System.out.println("filePath  :  " + filePath);
		} else if (fileName.equals("MS")) {
			resourceName = "S" + hNo + "-MS-01";
			resourcesPath = servletContext.getRealPath("/resources/img/spaceimg");
			filePath = resourcesPath + "/" + resourceName + ".jpg";
			System.out.println("filePath  :  " + filePath);
		}  else {
			resourceName = "S" + hNo + "-DS-0" + count;
			resourcesPath = servletContext.getRealPath("/resources/img/spaceimg");
			filePath = resourcesPath + "/" + resourceName + ".jpg";
			System.out.println("filePath  :  " + filePath);
		}

		return filePath;
		
	}
	@Override
	public <T> void insertDTO(T dto) {
		System.out.println("TeacherRegistDaoS :    "+dto.toString());
		dao.insertDTO(dto);
		
	}

	@Override
	public String makeDS(String fileName, int count, int hNo) {
		System.out.println(fileName);
		String resourceName;
		if (fileName.equals("S-DS-TYPE1")) {
			resourceName = "/resources/img/spaceImg/S" + hNo + "-DS-0" + count;

		} else if (fileName.equals("S-MS")) {
			return "S-MS";

		} else {
			resourceName = "/resources/img/spaceImg/S" + hNo + "-DS-0" + count;

		}
		System.out.println("makeDS" + resourceName);
		return resourceName;
	}
	@Override
	public void makeFile(String filePath, MultipartFile mFile) {
		// File 경로를 넣어주고 변형시킨 파일을 경로에 넣어준다.

		File file = new File(filePath);
		if (mFile.getSize() != 0) {
			if (!file.exists()) {
				file.mkdirs();
			}
			try {
				mFile.transferTo(file);
			} catch (IllegalStateException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			} catch (IOException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}

		} // if end
		
	}
	@Override
	public String makeMS(String fileName, int hNo) {
		// TODO Auto-generated method stub
				return "/resources/img/spaceImg/S" + hNo + "-MS-01";
	}
	
	@Override
	public <T> void applyDTO(T dto) {
		dao.insertDTO(dto);
	}

}

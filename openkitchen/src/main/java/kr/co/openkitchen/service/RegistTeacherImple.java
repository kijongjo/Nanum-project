package kr.co.openkitchen.service;

import java.io.File;
import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import kr.co.openkitchen.dto.TeacherRegistDTO;

//선생님 등록에 대한 service 
@Service
public class RegistTeacherImple implements RegistServiceInter {
	@Autowired
	ServletContext servletContext;
	// 이미지를 받아서 이름을 줌.
	@Override
	public String acceptImg(String fileName,int count) {
		
		String filePath;
		String resourceName;
		String resourcesPath = servletContext.getRealPath("/resources/img/teacherimg");
		System.out.println(resourcesPath);
		if (fileName.equals("DS-TYPE1")) {
			resourceName = "T" + 999 + "-DS-0" + count;
			
		} else if (fileName.equals("MS")) {
			resourceName = "T" + 999 + "-MS-01";

		} else {
			resourceName = "T" + 999 + "-DS-0" + count;
			
		}

		filePath = resourcesPath + "/" + resourceName + ".jpg";

		return filePath;

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

	}// makeFile end

	@Override
	public String makeDS(String fileName,int count) {
		System.out.println(fileName);
		String resourceName;
		if (fileName.equals("DS-TYPE1")) {
			resourceName ="/resources/img/teacherImg/"+"T" + 999 + "-DS-0" + count;
			
		} else if (fileName.equals("MS")) {
			 return "MS";
	
		} else {
			resourceName = "/resources/img/teacherImg/"+"T" + 999 + "-DS-0" + count;
                  
		}
      System.out.println("makeDS" + resourceName);
		return resourceName;
	}

	@Override
	public String makeMS(String fileName) {
		// TODO Auto-generated method stub
		return "./resources/img/teacherImg/T-"+999+"-MS-01";
	}
	
	

@Override
public <T> void insertDTO(Map<String, T> map) {

	  T dto=map.get("dto");
	  
	  System.out.println(dto.toString());
	
	
}

}

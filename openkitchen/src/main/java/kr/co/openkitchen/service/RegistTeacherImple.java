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
	public String acceptImg(String fileName,int count,int tNo) {
		
		String filePath;
		String resourceName;
		String resourcesPath ;
		
		if (fileName.equals("DS-TYPE1")) {
			resourceName = "T" + tNo + "-DS-0" + count;
			resourcesPath = servletContext.getRealPath("/resources/img/teacherimg");
			filePath = resourcesPath + "/" + resourceName + ".jpg";
			System.out.println("filePath  :  "+filePath);
		} else if (fileName.equals("MS")) {
			resourceName = "T" + tNo + "-MS-01";
			resourcesPath = servletContext.getRealPath("/resources/img/teacherimg");
			filePath = resourcesPath + "/" + resourceName + ".jpg";
			System.out.println("filePath  :  "+filePath);
		} else if(fileName.equals("proRegImg")) {
			resourceName =  tNo + "reg.jpg";
			resourcesPath = servletContext.getRealPath("/resources/img/regimg");
			filePath = resourcesPath + "/" + resourceName + ".jpg";
			System.out.println("filePath  :  "+filePath);
		} else if(fileName.equals("proAccountIng")) {
			resourceName =  tNo + "bank.jpg";
			resourcesPath = servletContext.getRealPath("/resources/img/bankimg");
			filePath = resourcesPath + "/" + resourceName + ".jpg";
			System.out.println("filePath  :  "+filePath);
		}else {
			return "";
		}


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
	public String makeDS(String fileName,int count,int tNo) {
		System.out.println(fileName);
		String resourceName;
		if (fileName.equals("DS-TYPE1")) {
			resourceName ="/resources/img/teacherImg/T" + tNo + "-DS-0" + count;
			
		} else if (fileName.equals("MS")) {
			 return "MS";
	
		} else {
			resourceName = "/resources/img/teacherImg/"+"T" + tNo + "-DS-0" + count;
                  
		}
      System.out.println("makeDS" + resourceName);
		return resourceName;
	}

	@Override
	public String makeMS(String fileName,int tNo) {
		// TODO Auto-generated method stub
		return "/resources/img/teacherImg/T"+tNo+"-MS-01";
	}
	
	

@Override
public <T> void insertDTO(Map<String, T> map) {

	  T dto=map.get("dto");
	  
	  System.out.println(dto.toString());
	
	
}

@Override
public String makeBK(String fileName,int tNo) {
	System.out.println("하이0");
	String resourceName="";
	if(fileName.equals("proRegImg")) {
		System.out.println("하이1");
		resourceName="/resources/img/regimg/"+tNo+"reg.jpg";
		
	}else {
		System.out.println("하이2");
		 resourceName="/resources/img/bankimg/"+tNo+"bank.jpg";
		  
	}
	return resourceName ;
}

}

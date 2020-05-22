package kr.co.openkitchen.classes;

import java.io.IOException;
import java.net.URL;

import org.springframework.http.MediaType;
import org.springframework.web.multipart.MultipartFile;

import com.amazonaws.HttpMethod;
import com.amazonaws.auth.DefaultAWSCredentialsProviderChain;
import com.amazonaws.auth.profile.ProfileCredentialsProvider;
import com.amazonaws.regions.Regions;
import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.AmazonS3ClientBuilder;
import com.amazonaws.services.s3.model.GeneratePresignedUrlRequest;
import com.amazonaws.services.s3.model.ObjectMetadata;
import com.amazonaws.services.s3.model.PutObjectRequest;

//by 조기종 S3클라이언트 객체 생성 class_200422(수정)
public class S3ClientFactory {
    //EC2내 권한 확인
	private static  AmazonS3 s3Client = AmazonS3ClientBuilder.standard()
			.withCredentials(new ProfileCredentialsProvider()).withRegion(Regions.AP_NORTHEAST_2).build();
    
	//by 조기종 Bucket에 파일 업로드_200417
	public void uploadFile(String filePath, MultipartFile mFile) {
		String bucketName = "nanum-bucket";
		//파일의 metadata 설정
		ObjectMetadata metadata = new ObjectMetadata();
		metadata.setContentType(MediaType.IMAGE_JPEG_VALUE);
		metadata.setContentLength(mFile.getSize());
		try {
			//객체 삽입
			s3Client.putObject(new PutObjectRequest(bucketName, filePath, mFile.getInputStream(), metadata));
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		}//try catch End

	}//uploadFile End

	//by 조기종 클라이언트단에 뿌려줄 파일Url 얻어오기_200417
	public String geturl(String objectkey) {
		String bucketname = "nanum-bucket";
		GeneratePresignedUrlRequest generatePresignedUrlRequest =
	    // substring aim to delete '/'
		new GeneratePresignedUrlRequest(bucketname, objectkey.substring(1)).withMethod(HttpMethod.GET);
		URL url = s3Client.generatePresignedUrl(generatePresignedUrlRequest);
		return url.toString();

	}//

}

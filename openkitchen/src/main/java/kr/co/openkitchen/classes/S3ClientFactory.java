package kr.co.openkitchen.classes;

import java.io.IOException;
import java.net.URL;

import org.springframework.http.MediaType;
import org.springframework.web.multipart.MultipartFile;

import com.amazonaws.HttpMethod;
import com.amazonaws.auth.profile.ProfileCredentialsProvider;
import com.amazonaws.regions.Regions;
import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.AmazonS3ClientBuilder;
import com.amazonaws.services.s3.model.GeneratePresignedUrlRequest;
import com.amazonaws.services.s3.model.ObjectMetadata;
import com.amazonaws.services.s3.model.PutObjectRequest;

public class S3ClientFactory {

	// 환경설정에의한 자격증명
	private static AmazonS3 s3Client = AmazonS3ClientBuilder.standard()
			.withCredentials(new ProfileCredentialsProvider()).withRegion(Regions.AP_NORTHEAST_2).build();

	public void uploadFile(String filePath, MultipartFile mFile) {
		String bucketName = "nanum-bucket";
		ObjectMetadata metadata = new ObjectMetadata();
		metadata.setContentType(MediaType.IMAGE_JPEG_VALUE);
		metadata.setContentLength(mFile.getSize());
		try {
			s3Client.putObject(new PutObjectRequest(bucketName, filePath, mFile.getInputStream(), metadata));
			System.out.println("s3 업로드 요청 완료");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("s3 업로드 요청 실패");
		}

	}

	public String geturl(String objectkey) {
		String bucketname = "nanum-bucket";

		GeneratePresignedUrlRequest generatePresignedUrlRequest =
				// substring aim to delete '/'
				new GeneratePresignedUrlRequest(bucketname, objectkey.substring(1)).withMethod(HttpMethod.GET);
		URL url = s3Client.generatePresignedUrl(generatePresignedUrlRequest);
		System.out.println("url 가져오기 종료   " + url.toString());
		return url.toString();

	}

}

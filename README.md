<strong name="목차">목차</strong>

1. [OpenKitchen](#openkitchen) <br/>
2. [Summary-프로젝트 요약](#summary)<br/>
3. [Default-기본규칙](#default)<br/>
4. [공통기술-적용기술설명](#기술)<br/>
* 개인 기술 * 역할 <br/>
   [조기종](#조기종)<br/>
  
    







<p align="center"><img src="https://user-images.githubusercontent.com/54735867/80936697-38fc4f80-8e0d-11ea-8294-7d0dda749065.png" width="300" height="300"></p>

<p align="center">사이트</p>
<p align="center">http://3.34.22.59:8080/openkitchenFinal/mypage/in<p/>
<h5 align="center">2020.3.08 ~ 2020.4.08</h5>

# OpenKitchen
<ul>
<li>OpenKitchen은 약 1개월 간 개발한 주방 공유 &amp;쿠킹 클래스 플랫폼 사이트입니다.</li> 
<li>Nanum팀은 총 5명의 구성원으로 되어 있으며 각자의 영역을 분담해 개발을 진행했습니다. </li>
</ul>

<h5 align="right"> <a href="#목차">목차보기▲</a></h5>

# Summary
해당 프로젝트는 주방 공유 플랫폼인 <a href="https://www.public-kitchen.com/">공공의주방</a> 사이트를 모티브로 제작하였습니다.
플랫폼 내 선생님,회원,호스트간의 상호작용을 통해  대여한 주방공간에서 클래스를 열고 요리를 배우며 가치를 창출하는 Vertical Platform입니다.
OpenKitchen은 Spring으로 제작된 백엔드 기술 중심 프로젝트이며 기본 기술 뿐만 아니라 AWS CLOUD COMPUTING을 추가해 최신 기술을 적용하고자 노력했습니다. 

<img src="https://user-images.githubusercontent.com/54735867/80943236-b0d47500-8e21-11ea-89dc-4492e5e760a8.png" width="100%" height="400">
<img src="https://user-images.githubusercontent.com/54735867/80943238-b16d0b80-8e21-11ea-9490-aa0e75c2dd57.png" width="98%" height="480">

<h5 align="right"> <a href="#목차">목차보기▲</a></h5>


# Default
<ul>
  <li>기본 폰트:'Roboto','Noto Sans', 'Noto Sans KR', sans-serif,기본색:#8E0032</li>
  <li>모든 페이지의 레이아웃은 lay01,lay02,lay03을 따라 통일성 및 유지 보수 코드 재사용성을 높인다.</li>
  <li>모듈의 재사용성을 높이고 개발 시간을 줄이기 위해 Repository의 'Module' 폴더에 저장해 사용한다.</li>
  <li>버튼을 오른쪽 하단에 배치시켜 사용자의 편의를 증진시킨다.</li>
  <li>맡은 페이지&기능마다 Issue를 생성하며 해당 Issue의 History에 개발 기록을 남긴다.</li>
  <li>페이지명은 미리 약속한 이름 규칙을 따라 헷갈리지 않도록 한다.</li>
</ul>

<h5 align="right"> <a href="#목차">목차보기▲</a></h5>

# 기술

## 형상관리 및 도구
GIT- 소스 트리
<img alt="GitHub issues" src="https://img.shields.io/github/issues/kijongjo/Nanum-project">
<img alt="GitHub commit activity" src="https://img.shields.io/github/commit-activity/m/kijongjo/Nanum-project">
<img alt="GitHub closed pull requests" src="https://img.shields.io/github/issues-pr-closed-raw/kijongjo/Nanum-project">
<img alt="GitHub milestones" src="https://img.shields.io/github/milestones/all/kijongjo/Nanum-project">

* 이슈관리를 통한 개발 진행
<img src="https://user-images.githubusercontent.com/54735867/81146109-9c73b200-8fb2-11ea-9199-04a33aea0ec1.png" width="100%" height="400">

<h5 align="right"> <a href="#목차">목차보기▲</a></h5>

## Spring Security 
*  사용자 접근 권한 관리와 CSRF 프로텍션을 위해 Spring Security를 사용했습니다. 
<img src="https://user-images.githubusercontent.com/54735867/81146244-dcd33000-8fb2-11ea-81ee-e315e895a1b9.png" width="70%" height="300">


<h5 align="right"> <a href="#목차">목차보기▲</a></h5>




##  조기종
<table style="width:600px ;" name="JoList">
    <tr>
        <th>Front-end</th>
        <th>Back-end</th>
        <th>DB</th>
        <th>기타</th>
    </tr>
    <tr>
        <td>
            <ul>
                <li><a href="#F1">이미지 최적화 & 이미지 용량 Resizing</a></li>
                <li><a href="#F2">documentFragement를 이용한 Append 성능 향상</a></li>
                <li><a href="#F3">보안을 위한 업로드 유형 제한</a></li>
                <li><a href="#F4">모듈 관리로 코드 재사용성 및 개발 속도 향상</a></li>
            </ul>
        </td>
        <td>
            <ul>
                <li><a href="#B1">JACKSON Library사용으로 POJO Serialization</a></li>
                <li><a href="#B2">Generic Method & Class사용으로 코드 재사용성 향상</a></li>
                <li><a href="#B3">Factory Design Pattern을 통한 코드 유연성 향상</a></li>
                <li><a href="#B4">Controller와 비즈니스 로직의 분리를 통한 Service 재사용성 향상</a> </li>
                <li><a href="#B5">동일한 코드 형식으로 가독성 & 유지보수 향상</a> </li>
            </ul>
        </td>
        <td>
            <ul>
                <li><a href="#D1">View 사용으로 회원 정보 보호</a></li>
                <li><a href="#D2">Nested Loop Join을 통한 Join 성능 향상</a></li>
                <li><a href="#D3">Merge Into 구문으로 충돌 방지 및 쿼리 효율 향상</a></li>
            </ul>
        </td>
        <td>
            <ul>
                <li><a href="#E1">GitHub Project Board를 이용한 이슈 관리</a></li>
                <li><a href="#E2">AWS S3를 이용한 리소스 관리 및 비용 감소</a></li>
            </ul>
        </td>
    </tr>
	</table>
	<table>
	<tr>
		<td>
			*로그인이 필요한 부분은 로그인 후 링크를 다시 클릭하시면 됩니다! 감사합니다.
		 <ul>
			 <li>(선생님,클래스,공간)상세 페이지UI/UX <br/>샘플 ▶ http://3.34.22.59:8080/openkitchenFinal/classD?no=24</li>
			 <li>클래스 등록 페이지 UI/UX&백엔드로직 (로그인 필요)<br/> 샘플 ▶ http://3.34.22.59:8080/openkitchenFinal/mypage/classBase?no=1</li>
			  <li>선생님 등록 페이지 UI/UX&백엔드로직 (로그인 필요)<br/> 샘플   ▶http://3.34.22.59:8080/openkitchenFinal/mypage/teacherBase?no=1</li>
			 <li>요리신청 목록 페이지 UI/UX&백엔드로직 (로그인 필요) <br/>샘플 ▶http://3.34.22.59:8080/openkitchenFinal/mypage/cookBookD?no=1</li>
			 <li>개설된 클래스 페이지 UI/UX&백엔드로직 (로그인 필요)<br/> 샘플 ▶ http://3.34.22.59:8080/openkitchenFinal/mypage/ongoingClass?no=2</li>
			 <li>관리자 페이지UI/UX<br/> 샘플  ▶ http://3.34.22.59:8080/openkitchenFinal/admin/in</li>
		 </ul>	
			</td>
	</tr>
</table>

<h5  align="right"> <a href="#목차">목차보기▲</a></h5>

#### F1.이미지 최적화 & 이미지 용량 Resizing <div name="F1"></div>
* 서비스 운영의 리소스 관리를 위해 이미지 용량을 리사이징하였고 서버 부하를 줄이기 위해 프론트 단에서 리사이징을 진행하였습니다.
<a href="https://github.com/kijongjo/Nanum-project/blob/feature/develop/%EB%AA%A8%EB%93%88/fileresizing.js">리사이징 코드보기</a> 
<img src="https://user-images.githubusercontent.com/54735867/81046771-0d07c980-8ef4-11ea-8f33-ec2c42677d96.gif" width="100%" height="400">
<h5  align="right"> <a href="#JoList">조기종-구현기술목록▲</a></h5>

               
#### F2. documentFragement를 이용한 Append로 성능 향상 <div name="F2"></div>
* 서버단에서 Json데이터를 가져와 페이지를 동적으로 그리는데 있어서 여러번의 append는 부담을 줄 수 있습니다. 가상 메모리 공간에서 데이터를
  가공한 후에 한번의 Append만으로 페이지를 그릴 수 있도록 지정해 Dom 객체의 접근을 최소화 했습니다. 
```javascript
//모듈: Javascript의 성능을 높여줄 수 있는 append 모듈

//fragment
var $frag = $(document.createDocumentFragment());
//json
var obj = JSON.parse(data);
//반복문    
obj.forEach(function(item) {
    contents1 = item.something1;
    contents2 = '<a href="ex1"><img src="' + contents1 + '">';
    contents3 = '<h3>' + item.something2 + '</h3>';
    contents4 = '<div class="Price"><strong>￦</strong>' + item.something3 + '</div>';
    contents5 = '<p>' + item.something4 + '</p>' + '</a>';
    tag = contents2 + contents3 + contents4 + contents5;
    $frag.append('<li>' + tag + '</li>');
}); // foreachend
//append 
$("특정 div").append($frag);
```
<h5  align="right"> <a href="#JoList">조기종-구현기술목록▲</a></h5>

#### F3.보안을 위한 업로드 유형 제한 <div name="F3"></div>
* 서버측에서 실행될 수 있는 악성 스크립트 파일 업로드를 제한하고 플랫폼을 보호하기 위해 확장자에 제한을 걸어두었습니다.

```javascript
     // client-side validation
     // always server-side validation required
     // 파일 형식 체크
     function validation(fileName) {
         fileName = fileName + "";
         var fileNameExtensionIndex = fileName.lastIndexOf('.') + 1;
         var fileNameExtension = fileName.toLowerCase().substring(
             fileNameExtensionIndex, fileName.length);
         if (!((fileNameExtension === 'jpg') || (fileNameExtension === 'jpeg') ||
                 (fileNameExtension === 'gif') || (fileNameExtension === 'png'))) {
             alert('jpg, gif, png 확장자만 업로드 가능합니다.');
             return true;
         } else {
             return false;
         }
     }
```

<h5  align="right"> <a href="#JoList">조기종-구현기술목록▲</a></h5>

#### F4.모듈 관리로 코드 재사용성 및 개발 속도 향상 <div name="F4"></div>
* 자주 쓰이는 기능을 따로 관리해 개발 속도를 향상시켰습니다.
<img src="https://user-images.githubusercontent.com/54735867/81050072-5ce98f00-8efa-11ea-924b-5234a4182e5f.gif" width="300" height="300">

<h5  align="right"> <a href="#JoList">조기종-구현기술목록▲</a></h5>


#### B1.JACKSON Library사용으로 POJO Serialization <div name="B1"></div>
*  요청한 데이터를 JSON화 하여 보냄으로써 프론트단에서 서버 사이드 언어가 섞이지 않도록 했고,REST API로 개발 방식이 변경될때 좀더 
   수월하게 변경될 수 있도록 가능성을 열어두었습니다.

```java
   	// 클래스 [예약종료 정보] 요청
	@RequestMapping(value = { "cookEndList" }, produces = "application/text; charset=utf8")
	@ResponseBody
	public String cookEndList(HttpServletRequest request) {

		String str = "";
		ObjectMapper mapper = new ObjectMapper();
		try {
			str=mapper.writeValueAsString("noValue");
		} catch (JsonProcessingException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
			// FactoryPattern Service Instance
			mypageCook = mypageCookOrder.receiveOrder(MypageCookInterType.MYPAGECOOKEND);
			MemberDTO mdto = (MemberDTO) session.getAttribute("openkitchen");
			int tNo = mdto.getmNo();
			List<CookRefundDTO> endList = mypageCook.selectOne(tNo).getCrd();
			//aws s3
			S3ClientFactory s3client = new S3ClientFactory();

			// request url from s3
			for (int i = 0; i < endList.size(); i++) {
				endList.get(i).setcMainsumnail(s3client.geturl(endList.get(i).getcMainsumnail()));
			} // for end
			
            //데이터 json 변환
			if (endList.size() != 0) {
				try {
					str = mapper.writeValueAsString(endList);
				} catch (JsonProcessingException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}//list end 
		return str;
	}
```

<h5  align="right"> <a href="#JoList">조기종-구현기술목록▲</a></h5>

#### B2.Generic Method & Class사용으로 코드 재사용성 향상 <div name="B2"></div>
* Generic Method와 Class 사용으로 Service Interface의 재사용성을 향상시키고자 노력했습니다.
<img src="https://user-images.githubusercontent.com/54735867/81054708-42b3af00-8f02-11ea-9b3b-bcf2d9069361.gif" width="100%" height="500">
<img src="https://user-images.githubusercontent.com/54735867/81055789-60821380-8f04-11ea-8c4c-7da41e9fdaee.gif" width="100%" height="500">

<h5  align="right"> <a href="#JoList">조기종-구현기술목록▲</a></h5>

#### B3.Factory Design Pattern을 통한 코드 유연성 향상 <div name="B3"></div>
* Factory Design Pattern으로 의존성을 줄이고 ,Field 주입의 단점을 보완하고자 했습니다. 
* 또한 가독성을 높이고 리팩토링시변경범위를 최소화 하기 위해  Enum 클래스를 사용했습니다.
  
 <img src="https://user-images.githubusercontent.com/54735867/81068639-a8606500-8f1b-11ea-9ca7-15d7847c6bb0.png" width="100%" height="500">  
 <img src="https://user-images.githubusercontent.com/54735867/81068631-a4344780-8f1b-11ea-82e4-51f34960dd05.png" width="100%" height="500">
 

<h5  align="right"> <a href="#JoList">조기종-구현기술목록▲</a></h5>

#### B4.Controller와 비즈니스 로직의 분리를 통한 Service 재사용성 향상 <div name="B4"></div>
* Controller단에서 request 객체를 POJO 형태로 가공해 서비스단에 넘겨주고 서비스 단에서 비즈니스 로직을 처리함으로써 서비스를 화면과 독립적으로
 만들어 재사용성을 향상 시켰습니다.
```java
// 클래스 [기본정보] 등록 요청
	@RequestMapping(value = "classBaseInfo", method = RequestMethod.POST)
	public String classBaseInfo(@ModelAttribute ClassRegistDTO dto, MultipartHttpServletRequest request) {
		// FactoryPattern Service Instance
		registServiceF = registOrderServiceF.receiveOrderF(RegistServiceTypeF.REGISTCLASSIMPLE);
		// 파일 저장되는 경로
		String filePath;
		// 상세 썸네일
		String cDetailsumnail = "";
		// 사진 번호
		int count = 1;
		int tNo = dto.gettNo();
		int cNo = registServiceF.<Integer>selectOne(tNo).getT();
		// form data에 저장된 fileList
		Iterator<String> fileList = request.getFileNames();

		while (fileList.hasNext()) {
			String fileName = fileList.next();
			// blob 또는 기존 형식으로 보내온 파일을 변환
			MultipartFile mFile = request.getFile(fileName);
			// 이미지 저장 시킬 위치 + 파일명
			filePath = registServiceF.createImgNameNpath(fileName, count, cNo);
			registServiceF.registerFileToS3(filePath, mFile);

			// 파일 종류 구분
			if (fileName.equals("C-DS-TYPE1")) {
				cDetailsumnail += registServiceF.namingDS(fileName, count, cNo) + ",";
				count++;
			} else if (fileName.equals("C-MS")) {
				String cMainsumnail = registServiceF.namingMS(fileName, cNo);
				dto.setcMainsumnail(cMainsumnail);
			} else {
				cDetailsumnail += registServiceF.namingDS(fileName, count, cNo) + ",";
				count++;
			} // 파일 종류 구분 end
		} // while end
		return "mypage/teacher/teacherBase";
```

<h5  align="right"> <a href="#JoList">조기종-구현기술목록▲</a></h5>

#### B5.동일한 코드 형식으로 가독성 & 유지보수 향상 <div name="B5"></div>
* 클린 코드를 위해 기존 코드와 통일성 있는 코드를 작성하도록 노력했습니다. 
<img src="https://user-images.githubusercontent.com/54735867/81074595-304a6d00-8f24-11ea-8128-7d52aee58138.png" width="100%" height="500">  
 <img src="https://user-images.githubusercontent.com/54735867/81074601-32143080-8f24-11ea-8def-df43aedf869c.png" width="100%" height="500">


<h5  align="right"> <a href="#JoList">조기종-구현기술목록▲</a></h5>

#### D1.View 사용으로 회원 정보 보호 <div name="D1"></div>
* 실제 회원들의 개인정보가 적혀있는 테이블에 접근하지 않고 플랫폼 활동에 필요한 Attribute를 뽑아낸 View 테이블을 사용함으로써 회원의 개인정보를 보 호하고자 했습니다.
 <img src="https://user-images.githubusercontent.com/54735867/81075553-78b65a80-8f25-11ea-8e9e-a2b2ebdef4d2.png" width="100%" height="300">



<h5  align="right"> <a href="#JoList">조기종-구현기술목록▲</a></h5>          
          
#### D2.Nested Loop Join과 힌트절을 통한 Join 성능 향상 <div name="D2"></div>
*  Join시 힌트절을 사용해 순차적 루프 방식을 유도해 좀 더 빨리 결과물을 낼 수 있도록 조정했습니다.

<img src="https://user-images.githubusercontent.com/54735867/81089084-de5f1280-8f36-11ea-8395-46caf1072706.png" width="500" height="300">



<h5  align="right"> <a href="#JoList">조기종-구현기술목록▲</a></h5>

#### D3.Merge Into 구문으로 충돌 방지 및 쿼리 효율 향상 <div name="D3"></div>
* 로직으로 처리한 후 여러번의 Query요청을 줄이기 위해 Merge Into 구문을 사용해 한번의 Query요청만으로 완료할 수 있도록 만들었습니다.
<img src="https://user-images.githubusercontent.com/54735867/81085798-a48c0d00-8f32-11ea-92c7-2bf4a265e79f.png" width="340" height="300">


<h5  align="right"> <a href="#JoList">조기종-구현기술목록▲</a></h5>

#### E1.GitHub Project Board를 이용한 이슈 관리 <div name="E1"></div>
* GitHub 프로젝트 보드를 사용해 프로젝트 작업을 구성하고 우선순위를 지정했으며, 보편적 기능 부터 특정 기능 작업까지의 흐름을 관리해 이슈 티켓을 발행  함으로써 체계적으로 개발을 진행해 나갈 수 있도록 노력했습니다.
<img src="https://user-images.githubusercontent.com/54735867/81087649-f46bd380-8f34-11ea-916a-3148eeebe59c.png" width="100%" height="400">


<h5  align="right"> <a href="#JoList">조기종-구현기술목록▲</a></h5>
               
#### E2.AWS S3를 이용한 리소스 관리 및 비용 감소 <div name="E2"></div>
* Amazone web service의 S3를 사용해 파일에 대한 액세스를 관리하고 데이터 손실에 대한 위험을 줄였습니다. 또한 AWS RDS에 파일이 저장 되는 경우보다
  부담이 적어 실제 운영할 경우 예상 비용을 감소시킬 수 있었습니다.
  
  
 <p align="center"> <img src="https://user-images.githubusercontent.com/54735867/81088746-6264ca80-8f36-11ea-9e19-d886c6fd155d.png" width="400" height="300"></p>

 
  
 
<h5  align="right"> <a href="#JoList">조기종-구현기술목록▲</a></h5>


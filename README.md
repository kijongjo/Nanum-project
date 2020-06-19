<strong name="목차">목차</strong>

1. [OpenKitchen](#openkitchen) <br/>
2. [Summary-프로젝트 요약](#summary)<br/>
3. [Default-기본규칙](#default)<br/>
4. [공통기술-적용기술설명](#기술)<br/>

  ##  조기종(소스 코드 보기)
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
                <li><a href="https://github.com/kijongjo/Nanum-project/blob/Portfolio/%EB%AA%A8%EB%93%88/fileresizing.js">이미지 최적화 & 이미지 용량 Resizing</a></li>
                <li><a href="https://github.com/kijongjo/Nanum-project/tree/Portfolio/%EB%AA%A8%EB%93%88">모듈 관리</a></li>
            </ul>
        </td>
        <td>
            <ul>
                <li><a href="https://github.com/kijongjo/Nanum-project/blob/Portfolio/openkitchen/src/main/java/kr/co/openkitchen/controller/RestfulUserController.java">RestController</a></li> 
                <li><a href="https://github.com/kijongjo/Nanum-project/blob/Portfolio/openkitchen/src/main/java/kr/co/openkitchen/classes/RegistServiceFactoryF.java">Factory Design Pattern Factory Class</a></li>
                <li><a href="https://github.com/kijongjo/Nanum-project/blob/Portfolio/openkitchen/src/test/java/kr/co/openkitchen/testcontroller/ClassBaseInfoTest.java">Controller Unit Test</a> </li>
            </ul>
        </td>
        <td>
            <ul>
                <li><a href="https://github.com/kijongjo/Nanum-project/blob/Portfolio/openkitchen/src/main/webapp/WEB-INF/mapper/classRegistMapper.xml">Merge Into 구문</a></li>
            </ul>
        </td>
        <td>
            <ul>
                <li><a href="https://github.com/kijongjo/Nanum-project/projects/3">GitHub Project Board</a></li>
                <li><a href="https://github.com/kijongjo/Nanum-project/blob/Portfolio/openkitchen/src/main/java/kr/co/openkitchen/classes/S3ClientFactory.java">AWS S3 Class</a></li>
            </ul>
        </td>
    </tr>
	</table>
	<table>
	<tr>
		<td>
			*로그인이 필요한 부분은 로그인 후 링크를 다시 클릭하시면 됩니다! 감사합니다.
		 <ul>
			 <li>클래스 등록 페이지 UI/UX&백엔드로직 (로그인 필요)<br/> 샘플 ▶ http://www.ouropenkitchen.com/openkitchenFinal/mypage/users/99/classBases/1</li>
			  <li>선생님 등록 페이지 UI/UX&백엔드로직 (로그인 필요)<br/> 샘플   ▶http://www.ouropenkitchen.com/openkitchenFinal/mypage/users/99/teacherBase/1</li>
			 <li>요리신청 목록 페이지 UI/UX&백엔드로직 (로그인 필요) <br/>샘플 ▶http://www.ouropenkitchen.com//openkitchenFinal/mypage/users/99/cookBooks/1</li>
			 <li>개설된 클래스 페이지 UI/UX&백엔드로직 (로그인 필요)<br/> 샘플 ▶ http://www.ouropenkitchen.com/openkitchenFinal/mypage/users/99/standByClasses/1</li>
			 			 <li>(선생님,클래스,공간)상세 페이지UI/UX <br/>샘플 ▶ http://www.ouropenkitchen.com/openkitchenFinal/classD?no=24</li>
			 <li>관리자 페이지UI/UX<br/> 샘플  ▶ http://3.34.22.59:8080/openkitchenFinal/admin/in</li>
		 </ul>	
			</td>
	</tr>
</table>
<p align="center"><img src="https://user-images.githubusercontent.com/54735867/80936697-38fc4f80-8e0d-11ea-8294-7d0dda749065.png" width="300" height="300"></p>

<p align="center">사이트</p>
<p align="center">http://3.34.22.59:8080/openkitchenFinal/mypage/in<p/>
<h5 align="center">2020.3.08 ~ 2020.4.08</h5>

# OpenKitchen
<ul>
<li>OpenKitchen은 약 1개월 간 개발한 주방 공유 &amp;쿠킹 클래스 플랫폼 사이트입니다.</li> 
<li>Nanum팀은 총 5명의 구성원으로 되어 있으며 각자의 영역을 분담해 개발을 진행했습니다. </li>
<li>개발언어:Spring Framework(5.2.3),JQuery(3.4.1),Javascript,Oracle(11g),MyBatis(2.0.4),Maven(3.6.3),AWS 외 다수 API </li>	
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







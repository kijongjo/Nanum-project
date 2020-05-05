<strong name="목차">목차</strong>

1. [OpenKitchen](#openkitchen) <br/>
2. [Summary-프로젝트 요약](#summary)<br/>
3. [Default-기본규칙](#default)<br/>
4. [기술-적용기술설명](#기술)<br/>
*각자 구현한 기술에 대한 설명<br/>
   [이정용](#이정용)<br/>
   [조기종](#조기종)<br/>
    





<p align="center"><img src="https://user-images.githubusercontent.com/54735867/80936697-38fc4f80-8e0d-11ea-8294-7d0dda749065.png" width="300" height="300"></p>

# OpenKitchen
<ul>
<li>OpenKitchen은 약 1개월 간 개발한 주방 공유 &amp;쿠킹 클래스 플랫폼 사이트입니다.</li> 
<li>Nanum팀은 총 5명의 구성원으로 되어 있으며 각자의 영역을 분담해 개발을 진행했습니다. </li>
</ul>

<h5 align="right"> <a href="#목차">목차보기▲</a></h5>

# Summary
해당 프로젝트는 주방 공유 플랫폼인 <a href="https://www.public-kitchen.com/">공공의주방</a> 사이트를 모티브로 제작하였습니다.
플랫폼 내선생님,회원,호스트간의 상호작용을 통해  대여한 주방공간에서 클래스를 열고 요리를 배우며 가치를 창출하는 Vertical Platform입니다.
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
공통 기술 설명

<h5 align="right"> <a href="#목차">목차보기▲</a></h5>

##  이정용

각자 맡은 페이지에서 사용한 기술 설명 하기 
<h5 align="right"> <a href="#목차">목차보기▲</a></h5>

##  조기종
<table style="width:600px ; " ">
    <tr>
        <th>Front-end</th>
        <th>Back-end</th>
        <th>DB</th>
        <th>기타</th>
    </tr>
    <tr>
        <td>
            <ul>
                <li>이미지 최적화 & 이미지 용량 Resizing</li>
                <li>Frag를 이용한 Append 메모리 부담 감소</li>
                <li>보안을 위한 업로드 유형 제한</li>
                <li>모듈 관리로 코드 재사용성 및 개발 속도 향상</li>
            </ul>
        </td>
        <td>
            <ul>
        <li>JACKSON Library사용으로 POJO Serialization</li>
        <li>Generic Method & Class사용으로 코드 재사용성 향상</li>
        <li>Factory Design Pattern을 통한 코드 유연성 향상</li>
        <li>Controller와 비즈니스 로직의 분리를 통한 Service 재사용성 향상 </li>
        <li>동일한 코드 형식으로 가독성 & 유지보수 향상 </li> 
    </ul>
    
</td>
        <td>
            <ul>
       <li>View 사용으로 회원 정보 보호</li>
       <li>Nested Loop Join을 통한 Join 성능 향상</li>
       <li>Merge Into 구문으로 충돌 방지 및 쿼리 효율 향상</li>
        </ul>       
        </td>      
        <td>
        <ul>
         <li>GitHub Project Board를 이용한 이슈 관리</li>
         <li>AWS S3를 이용한 리소스 관리 및 비용 감소 </li>      
        </ul>
        </td>
    </tr>  
</table>



<h5  align="right"> <a href="#목차">목차보기▲</a></h5>


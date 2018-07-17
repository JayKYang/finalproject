<%@page import="java.io.*,java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ include file="/WEB-INF/view/jspHeader.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Insert title here</title>
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=qDOuw0wNL1zXEzspRGUC&submodules=geocoder"></script>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	
   
   //보험
   $('input[name="chkinsurance"]').click(function(){
      var a =[];
      $('input[name="insurance"]').val(null);
      $('input[name="chkinsurance"]:checked').each(function(){
         a.push($(this).val());
         $('input[name="insurance"]').val(a);
      })
   })   
   
   //회사분위기
   $('input[name="chkmood"]').click(function(){
      var a =[];
      $('input[name="mood"]').val(null);
      $('input[name="chkmood"]:checked').each(function(){
         a.push($(this).val());
         $('input[name="mood"]').val(a);
      })
   })
   
   //의료,건강
   $('input[name="chkhealth"]').click(function(){
      var a =[];
      $('input[name="health"]').val(null);
      $('input[name="chkhealth"]:checked').each(function(){
         a.push($(this).val());
         $('input[name="health"]').val(a);
      })
   })
   
   //사무실환경
   $('input[name="chkoffice"]').click(function(){
      var a =[];
      $('input[name="office"]').val(null);
      $('input[name="chkoffice"]:checked').each(function(){
         a.push($(this).val());
         $('input[name="office"]').val(a);
      })
   })

   //의복관련
   $('input[name="chkclothes"]').click(function(){
      var a =[];
      $('input[name="clothes"]').val(null);
      $('input[name="chkclothes"]:checked').each(function(){
         a.push($(this).val());
         $('input[name="clothes"]').val(a);
      })
   })
   
   //식사관련
   $('input[name="chkmeal"]').click(function(){
      var a =[];
      $('input[name="meal"]').val(null);
      $('input[name="chkmeal"]:checked').each(function(){
         a.push($(this).val());
         $('input[name="meal"]').val(a);
      })
   })
   
   //지급품관련
   $('input[name="chksupplies"]').click(function(){
      var a =[];
      $('input[name="supplies"]').val(null);
      $('input[name="chksupplies"]:checked').each(function(){
         a.push($(this).val());
         $('input[name="supplies"]').val(a);
      })
   })
   
   //출산/육아
   $('input[name="chkcare"]').click(function(){
      var a =[];
      $('input[name="care"]').val(null);
      $('input[name="chkcare"]:checked').each(function(){
         a.push($(this).val());
         $('input[name="care"]').val(a);
      })
   })
   
   //지원금관련
   $('input[name="chksupportfund"]').click(function(){
      var a =[];
      $('input[name="supportfund"]').val(null);
      $('input[name="chksupportfund"]:checked').each(function(){
         a.push($(this).val());
         $('input[name="supportfund"]').val(a);
      })
   })
   
   //교육관련
   $('input[name="chkeducation"]').click(function(){
      var a =[];
      $('input[name="education"]').val(null);
      $('input[name="chkeducation"]:checked').each(function(){
         a.push($(this).val());
         $('input[name="education"]').val(a);
      })
   })
   
   //회사행사
   $('input[name="chkcompanyevent"]').click(function(){
      var a =[];
      $('input[name="companyevent"]').val(null);
      $('input[name="chkcompanyevent"]:checked').each(function(){
         a.push($(this).val());
         $('input[name="companyevent"]').val(a);
      })
   })
   
   //교통관련
   $('input[name="chktraffic"]').click(function(){
      var a =[];
      $('input[name="traffic"]').val(null);
      $('input[name="chktraffic"]:checked').each(function(){
         a.push($(this).val());
         $('input[name="traffic"]').val(a);
      })
   })
   
   
  
   
	   
	
	   
	   
});   
   
   
   
   





 
   


 
/* var oTbl;
//Row 추가
function insRow() {
   alert("sfaf")
oTbl = document.getElementById("addTable");
var oRow = oTbl.insertRow();
oRow.onmouseover=function(){oTbl.clickedRowIndex=this.rowIndex}; //clickedRowIndex - 클릭한 Row의 위치를 확인;
var oCell = oRow.insertCell();

//삽입될 Form Tag
var frmTag = "<input type=text name=addText style=width:350px; height:20px;> ";
frmTag += "<input type=button value='삭제' onClick='removeRow()' style='cursor:hand'>";
oCell.innerHTML = frmTag;
}
//Row 삭제
function removeRow() {
oTbl.deleteRow(oTbl.clickedRowIndex);
}
 */


</script>
<style type="text/css">
 #comDiv,#comrepDiv {
    border : 1px solid #000000;
 }
 
 #comDiv{
    width : 500px;
    height : 150px;
    float : left;
 }
 #comrepDiv{
    width : 500px;
    height : 150px;
 }
 tr {
    border-bottom : 1px solid #000000;
 }
</style>
 </head>
<body>
<div class="w3-container" style="padding:128px 16px" id="about">
  <h2 class="w3-center"><b>${user.name}</b></h2>
  <br>
  <br>
  <p class="w3-center w3-large"></p>
  <div class="w3-row-padding w3-center" style="margin-top:64px">
    <div class="w3-quarter">
      <i class="fa fa-drivers-license-o w3-margin-bottom w3-jumbo w3-center"></i>
      <p class="w3-large">The Date of Incorporation</p>
      <p><fmt:formatDate value="${user.birth}" pattern="yyyy년 MM월 dd일" /></p>
    </div>
    <div class="w3-quarter">
        <i class="fa fa-file-text-o w3-margin-bottom w3-jumbo"></i>
      <p class="w3-large">Type of Business</p>
      <p>${user.industy}</p>
    </div>
    <div class="w3-quarter">
      <i class="fa fa-location-arrow w3-margin-bottom w3-jumbo"></i>
      <p class="w3-large">Business Address</p>
      <p>${user.address}</p>
    </div>
    <div class="w3-quarter">
         <i class="fa fa-desktop w3-margin-bottom w3-jumbo w3-center"></i>
      <p class="w3-large">Site</p>
      <p><a href="${user.site}">${user.site}</a></p>
    </div>
  </div>
</div>
<br>
<br>
   <form:form modelAttribute="companyInfo" action="companyDetailwrite.jsy" method="post" name="f">
<table width="80%" border="1">
   <tr>
      
      <td>대표자명</td>
      <td colspan="3">
         <form:input path="ceoname" /><font color="red"><form:errors path="ceoname" /></font>
      </td>
   </tr>
   <tr>
      <td>사원수</td>
      <td>
      <form:input path="worker"/><font color="red"><form:errors path="worker" /></font>
      </td>
      <td>자본금</td>
      <td><form:input path="capital" /><font color="red"><form:errors path="capital" /></font></td>
   </tr>
   <tr>
      <td>매출액</td>
      <td><form:input path="sales" /><font color="red"><form:errors path="sales" /></font></td>
      <td>영업이익</td>
      <td>
      <form:input path="profit" /><font color="red"><form:errors path="profit" /></font>
      </td>
   </tr>
  <tr>
      <td colspan="5">
      <h2>근무조건</h2>
      </td>
   </tr>
   <tr>
      <td>
         연금보험
      </td>
      <td>
            <input name="chkinsurance" type="checkbox" value="국민연금(4대보험)">국민연금(4대보험)
            <input name="chkinsurance" type="checkbox" value="고용보험(4대보험)">고용보험(4대보험)
            <input name="chkinsurance" type="checkbox" value="산재보험(4대보험)">산재보험(4대보험)
            <input name="chkinsurance" type="checkbox" value="건강보험(4대보험)">건강보험(4대보험)
            <input type="text" name="insurance">
      </td>
      
      <td>급여제도</td>
      <td>
      <input name="salsystem" type="text">
      </td>
   </tr>
   <tr>
      <td>수당제도</td>
      <td>
      <input name="benefit" type="text">
      </td>

      <td>회사분위기</td>
      <td>
      <input name="chkmood" type="checkbox" value="회식 강요 안함">회식 강요 안함
      <input name="chkmood" type="checkbox" value="인재육성 중시">인재육성 중시
      <input name="chkmood" type="checkbox" value="초고속 승진 가능">초고속 승진 가능
      <input name="chkmood" type="checkbox" value="호칭/서열 파괴">호칭/서열 파괴
      <input name="chkmood" type="checkbox" value="가족같은 분위기">가족같은 분위기
      <input name="chkmood" type="checkbox" value="야근 강요 안함">야근 강요 안함
      <input type="text" name="mood">
      </td>
   </tr>   
   <tr>
      <td>명절/기념일</td>
      <td>
         <input name="anniversary" type="text">
      </td>
      <td>의료/건강</td>
      <td>
         <input name="chkhealth" type="checkbox" value="헬스장 구비">헬스장 구비
         <input name="chkhealth" type="checkbox" value="건강검진">건강검진
         <input name="chkhealth" type="checkbox" value="가족 건강 검진">가족 건강 검진
         <input type="text" name="health">
      </td>
   </tr>
   <tr>
      <td>사무실 환경</td>
      <td>
         <input name="chkoffice" type="checkbox" value="회의실(PT가능)">회의실(PT가능)
         <input name="chkoffice" type="checkbox" value="무선인터넷">무선인터넷
         <input name="chkoffice" type="checkbox" value="화장실 비데">화장실 비데
         <input name="chkoffice" type="checkbox" value="사내 정원">사내 정원
         <input name="chkoffice" type="checkbox" value="샤워실,취침실">샤워실,취침실
         <input name="chkoffice" type="checkbox" value="여성전용 휴게실">여성전용 휴게실
         <input name="chkoffice" type="checkbox" value="공기청정기">공기청정기
         <input name="chkoffice" type="checkbox" value="카페테리아">카페테리아
         <input name="chkoffice" type="checkbox" value="건물 내 흡연실">건물 내 흡연실
         <input type="text" name="office">
      </td>
      <td>의복관련</td>
      <td>
      <input name="chkclothes" type="checkbox" value="자유복장">자유복장
      <input name="chkclothes" type="checkbox" value="정장">정장
      <input type="text" name="clothes">
      </td>
   </tr>
   <tr>
      <td>식사관련</td>
      <td>
         <input name="chkmeal" type="checkbox" value="저녁식사 제공">저녁식사 제공
         <input name="chkmeal" type="checkbox" value="냉장고 있음">냉장고 있음
         <input name="chkmeal" type="checkbox" value="전자레인지 있음">전자레인지 있음
         <input name="chkmeal" type="checkbox" value="음료제공(차,커피)">음료제공(차,커피)
         <input name="chkmeal" type="checkbox" value="간식지급">간식지급
         <input name="chkmeal" type="checkbox" value="구내식당">구내식당
         <input type="text" name="meal">
      </td> 
      <td>지급품</td>
      <td>
         <input name="chksupplies" type="checkbox" value="개인 직통전화">개인 직통전화
         <input name="chksupplies" type="checkbox" value="회사 뺏지">회사뺏지
         <input name="chksupplies" type="checkbox" value="회사 다이어리">회사다이어리
         <input name="chksupplies" type="checkbox" value="회사 캘린더">회사캘린더
         <input name="chksupplies" type="checkbox" value="회사 필기구">회사필기구
         <input name="chksupplies" type="checkbox" value="사원증(멤버쉽카드)">사원증(멤버쉽카드)
         <input name="chksupplies" type="checkbox" value="사원증">사원증
         <input name="chksupplies" type="checkbox" value="노트북">노트북
         <input name="chksupplies" type="checkbox" value="듀얼모니터">듀얼모니터
         <input name="chksupplies" type="checkbox" value="자회사 제품 할인">자회사 제품 할인
         <input type="text" name="supplies">
      </td>
   </tr>
   <tr>
      <td>출산/육아</td>
      <td>
         <input name="chkcare" type="checkbox" value="산전 후 휴가">산전 후 휴가
         <input name="chkcare" type="checkbox" value="육아 휴직">육아 휴직
         <input name="chkcare" type="checkbox" value="남성 출산휴가">남성 출산휴가
         <input type="text" name="care">
      </td>
      <td>지원금/대출</td>
      <td>
         <input name="chksupportfund" type="checkbox" value="자녀학자금(일반)">자녀학자금(일반)
         <input name="chksupportfund" type="checkbox" value="자녀학자금(유치원)">자녀학자금(유치원)
         <input name="chksupportfund" type="checkbox" value="자녀학자금(초등)">자녀학자금(초등)
         <input name="chksupportfund" type="checkbox" value="자녀학자금(중등)">자녀학자금(중등)
         <input name="chksupportfund" type="checkbox" value="자녀학자금(고등)">자녀학자금(고등)
         <input name="chksupportfund" type="checkbox" value="자녀학자금(대학)">자녀학자금(대학)
         <input name="chksupportfund" type="checkbox" value="직원대출제도">직원대출제도
         <input name="chksupportfund" type="checkbox" value="각종 경조사 지원">각종 경조사 지원
         <input name="chksupportfund" type="checkbox" value="통신비 지원">통신비 지원
         <input type="text" name="supportfund">
      </td>
   </tr>
   <tr>
      <td>교육/훈련</td>
      <td>
         <input name="chkeducation" type="checkbox" value="신입 사원교육">신입 사원교육
         <input name="chkeducation" type="checkbox" value="직무 능력향상교육">직무 능력향상교육
         <input name="chkeducation" type="checkbox" value="리더쉽 강화교육">리더쉽 강화교육
         <input name="chkeducation" type="checkbox" value="도서구입비 지원">도서구입비 지원
         <input name="chkeducation" type="checkbox" value="멘토링제도">멘토링제도
         <input name="chkeducation" type="checkbox" value="사이버연수원 운영">사이버연수원 운영
         <input name="chkeducation" type="checkbox" value="교육비 지원">교육비 지원
         <input name="chkeducation" type="checkbox" value="자기계발비 지원">자기계발비 지원
         <input type="text" name="education">
      </td>
      <td>회사행사</td>
      <td>
         <input name="chkcompanyevent" type="checkbox" value="우수사원 시상식">우수사원 시상식
         <input name="chkcompanyevent" type="checkbox" value="워크샵">워크샵
         <input name="chkcompanyevent" type="checkbox" value="신입사원OT">신입사원OT
         <input name="chkcompanyevent" type="checkbox" value="체육대회">체육대회
         <input name="chkcompanyevent" type="checkbox" value="야유회">야유회
         <input name="chkcompanyevent" type="checkbox" value="단합대회/MT">단합대회/MT
         <input type="text" name="companyevent">
      </td>
   </tr>
   <tr>
      <td>교통/출퇴근</td>
      <td>
         <input name="chktraffic" type="checkbox" value="야간교통비 지급">야간교통비 지급
         <input name="chktraffic" type="checkbox" value="회사 차량있음">회사 차량있음
         <input type="text" name="traffic">
      </td>
      <td>
         동호회/조직
      </td>
      <td>
      <input name="society" type="text">
      </td>
   </tr>
   <tr>
      <td colspan="5" align="center">
         <a href="javascript:document.f.submit()">신청하기</a>
         <a href="hirelist.jsy">LIST</a>
      </td>
   </tr>
</table>
   </form:form>
</body>
</html>
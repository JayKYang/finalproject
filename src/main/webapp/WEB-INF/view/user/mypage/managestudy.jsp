<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>
<!DOCTYPE html>
<html>
<title>잇썸 > 마이페이지 > 스터디 관리</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<head>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	function list(pageNum, smkind) {
		var searchType = document.searchform.searchType.value;
		if (searchType == null || searchType.length == 0) {
			document.searchform.searchContent.value = "";
			document.searchform.pageNum.value = "1";
			location.href = "managestudy.jsy?pageNum=" + pageNum+ "&smkind=" + smkind;
		} else {
			document.searchform.pageNum.value = pageNum;
			document.searchform.submit();
			return true;
		}
		return false;
	}
</script>
<style>
	.button{
		width:60px;
		height:30px;
	}
   	.button {
	  border-radius: 4px;
	  background-color: skyblue;
	  border: none;
	  color: #FFFFFF;
	  text-align: center;
	  font-size: 18px;
	  padding: 5px;
	  transition: all 0.5s;
	  cursor: pointer;
	}
	.button:hover {
	  background-color: pink;
	}
	
	.button span {
	  cursor: pointer;
	  display: inline-block;
	  position: relative;
	  transition: 0.5s;
	}
	
	.button span:after {
	  content: '\00bb';
	  position: absolute;
	  opacity: 0;
	  top: 0;
	  right: -20px;
	  transition: 0.5s;
	}
	
	.button:hover span {
	  padding-right: 25px;
	}
	
	.button:hover span:after {
	  opacity: 1;
	  right: 0;
	}
</style>
</head>

<body>
	<div class="w3-content">
		<c:if test="${smkind==1}">
		<div class="w3-center">
			<p>
				<span class="w3-content w3-text-blue w3-xxlarge">참여 신청한 스터디</span>
			</p>
		</div>
		</c:if>
		<c:if test="${smkind==2}">
		<div class="w3-center">
			<p>
				<span class="w3-content w3-text-blue w3-xxlarge">스크랩한 스터디</span>
			</p>
		</div>
		</c:if>
		<c:if test="${smkind==3}">
		<div class="w3-center">
			<p>
				<span class="w3-content w3-text-blue w3-xxlarge">내가 만든 스터디</span>
			</p>
		</div>
		</c:if>
		<form>
		<c:if test="${smkind==1}">
			<table class="w3-table w3-bordered">
				<tr>
				<th style="text-align:center;">순서</th>
				<th style="text-align:center;">스터디 이름</th>
				<th style="text-align:center;">가능인원</th>
				<th style="text-align:center;">작성일</th>
				<th style="text-align:center;">수락 상태</th>
				</tr>
				<c:if test="${empty studylist}">
					<tr>
					<td colspan="5" style="text-align:center;">참여 신청한 스터디가 없습니다.</td>
					</tr>
				</c:if>
				<c:forEach var="study" items="${studylist}">
				<tr>
					<td style="text-align:center;">${studynum}</td>
					<c:set var="studynum" value="${studynum - 1 }"></c:set>
					<c:set var="subjectText" value="${study.studyname}"/>
					<td style="text-align:center;">
						<c:if test="${study.state==2}">
							<a href="myStudyInfo.jsy?smkind=${smkind}&studyno=${study.studyno}&pageNum=${pageNum}">${fn:substring(subjectText, 0, 10)}<c:if test="${fn:length(subjectText)>10}">...</c:if></a>
						</c:if>
						<!-- studyno,pageNum -->
						<c:if test="${study.state!=2}">
							<a href="../../study/studyInfo.jsy?smkind=${smkind}&studyno=${study.studyno}&pageNum=${pageNum}">${fn:substring(subjectText, 0, 10)}<c:if test="${fn:length(subjectText)>10}">...</c:if></a>
						</c:if>
					</td>
					<td style="text-align:center;">
						${study.nowmember} / <c:if test="${study.limitmember==100}">∞</c:if><c:if test="${study.limitmember!=100}">${study.limitmember}</c:if> 
					</td>
					<fmt:formatDate value="${study.regdate}" pattern="yyyy-MM-dd" var="regnow" />
					<td style="text-align:center;">${regnow}</td>
					<td style="text-align:center;">
						<c:if test="${study.state==0}">
							<div class="w3-tag w3-round w3-gray w3-border w3-border-white" style="width:60px;">
								<font style="color: white;">대기</font>
							</div>
						</c:if>
						<c:if test="${study.state==1}">
							<div class="w3-tag w3-round w3-red w3-border w3-border-white" style="width:60px;">
										<font style="color: white;">거절</font>
							</div>
						</c:if>
						<c:if test="${study.state==2}">
							<div class="w3-tag w3-round w3-green w3-border w3-border-white" style="width:60px;">
										<font style="color: white;">승인</font>
							</div>
						</c:if>
					</td>
				</tr>
				</c:forEach>
			</table>
		</c:if>
		<c:if test="${smkind==2}">
			<table class="w3-table w3-bordered">
				<tr>
				<th style="text-align:center;">순서</th>
				<th style="text-align:center;">스터디 이름</th>
				<th style="text-align:center;">가능인원</th>
				<th style="text-align:center;">작성일</th>
				</tr>
				<c:if test="${empty studylist}">
					<tr>
					<td colspan="4" style="text-align:center;">스크랩한 스터디가 없습니다.</td>
					</tr>
				</c:if>
				<c:forEach var="study" items="${studylist}">
				<tr>
					<td style="text-align:center;">${studynum}</td>
					<c:set var="studynum" value="${studynum - 1 }"></c:set>
					<c:set var="subjectText" value="${study.studyname}"/>
					<td style="text-align:center;">
						<a href="../../study/studyInfo.jsy?smkind=${smkind}&studyno=${study.studyno}&pageNum=${pageNum}">${fn:substring(subjectText, 0, 10)}<c:if test="${fn:length(subjectText)>10}">...</c:if></a>
					</td>
					<td style="text-align:center;">
						${study.nowmember} / <c:if test="${study.limitmember==100}">∞</c:if><c:if test="${study.limitmember!=100}">${study.limitmember}</c:if> 
					</td>
					<fmt:formatDate value="${study.regdate}" pattern="yyyy-MM-dd" var="regnow" />
					<td style="text-align:center;">${regnow}</td>
				</tr>
				</c:forEach>
			</table>
		</c:if>
		<c:if test="${smkind==3}">
			<table class="w3-table w3-bordered">
				<tr>
				<th style="text-align:center;">순서</th>
				<th style="text-align:center;">스터디 이름</th>
				<th style="text-align:center;">가능인원</th>
				<th style="text-align:center;">작성일</th>
				</tr>
				<c:if test="${empty studylist}">
					<tr>
					<td colspan="4" style="text-align:center;">만든 스터디가 없습니다.</td>
					</tr>
				</c:if>
				<c:forEach var="study" items="${studylist}">
				<tr>
					<td style="text-align:center;">${studynum}</td>
					<c:set var="studynum" value="${studynum - 1 }"></c:set>
					<c:set var="subjectText" value="${study.studyname}"/>
					<td style="text-align:center;">
						<a href="myMkStudy.jsy?smkind=${smkind}&studyno=${study.studyno}&pageNum=${pageNum}">${fn:substring(subjectText, 0, 10)}<c:if test="${fn:length(subjectText)>10}">...</c:if></a>
					</td>
					<td style="text-align:center;">
						${study.nowmember} / <c:if test="${study.limitmember==100}">∞</c:if><c:if test="${study.limitmember!=100}">${study.limitmember}</c:if> 
					</td>
					<fmt:formatDate value="${study.regdate}" pattern="yyyy-MM-dd" var="regnow" />
					<td style="text-align:center;">${regnow}</td>
				</tr>
				</c:forEach>
			</table>
		</c:if>
	</form>
	<br>
	<div class="w3-bar w3-center">
		<c:if test="${pageNum > 1 }">
			<a href="javascript:list(${pageNum - 1},${smkind})">[이전]</a>
		</c:if>
		&nbsp;
		<c:if test="${pageNum <=1 }">
			[이전]
		</c:if>
		&nbsp;
		<c:forEach var="a" begin="${startpage }" end="${endpage }">
			<c:if test="${a == pageNum }">[${a}]</c:if>
			<c:if test="${a != pageNum }">
				<a href="javascript:list(${a},${smkind})">[${a}]</a>
			</c:if>
		</c:forEach>
		<c:if test="${pageNum < maxpage}">
			<a href="javascript:list(${pageNum + 1 },${smkind})">[다음]</a>
		</c:if>
		&nbsp;
		<c:if test="${pageNum >= maxpage }">[다음]</c:if>
		&nbsp;
	</div>
	<br>
	<form action="managestudy.jsy" method="post" name="searchform" onsubmit="return list(1)">
		<input type="hidden" name="pageNum" value="1"> 
		<input type="hidden" name="smkind" value="${smkind}"> 
		<span style="float: right"> 
			<select name="searchType" id="searchType">
					<option value="" disabled selected>선택하세요</option>
					<option value="studyname">제목</option>
					<option value="content">내용</option>
					<option value="region">지역</option>
					<option value="memberid">작성자아이디</option>
					<option value="membername">작성자이름</option>
			</select>>&nbsp; 
			<script type="text/javascript">
				if ('${param.searchType}' != '') {
					document.getElementById("searchType").value = '${param.searchType}'
				}
			</script> 
			<input type="text" name="searchContent" value="${param.searchContent }">&nbsp;
			<input type="submit" class="button w3-right" value="검색">
		</span>
	</form>
	</div>
</body>
</html>

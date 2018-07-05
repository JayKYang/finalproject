<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>
<!DOCTYPE html>
<html>
<title>잇썸 > 포트폴리오</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<head>
<script type="text/javascript" src="http://code.jquery.com/jquery-2.1.0.min.js"></script>
<script>
	$(document).ready(function(){
		url = document.URL.split("#");
		if(url[1]!=null){
			openPortfolio(url[1]);
		}
	});
	function openPortfolio(mypageName) {
	    var i;
	    var x = document.getElementsByClassName("portfoliopage");
	    for (i = 0; i < x.length; i++) {
	        x[i].style.display = "none"; 
	    }
	    document.getElementById(mypageName).style.display = "block"; 
	}
</script>
	<script>
	function openPortfolio(pageName) {
	    var i;
	    var x = document.getElementsByClassName("portfoliopage");
	    for (i = 0; i < x.length; i++) {
	        x[i].style.display = "none"; 
	    }
	    document.getElementById(pageName).style.display = "block"; 
	}
	function message_open(url) {
		window.open(url, "message","width=40%, height=80%, left=100, top=100");
	}
	</script>
	<style>
		.skills {
		  text-align: right;
		  padding-right: 20px;
		  line-height: 40px;
		  color: white;
		}
		
		.fullbar {
		  width: 100%;
		  background-color: #ddd;
		}
	</style>
</head>
<style>
body, h1,h2,h3,h4,h5,h6 {font-family: "Montserrat", sans-serif}
.w3-row-padding img {margin-bottom: 12px}
/* Set the width of the sidebar to 120px */
.w3-sidebar {width: 120px;background: #222;}
#main {margin-left: 120px}
/* Remove margins from "page content" on small screens */
@media only screen and (max-width: 600px) {#main {margin-left: 0}}
</style>
<body class="w3-black">
<!-- Icon Bar (Sidebar - hidden on small screens) -->
<nav class="w3-sidebar w3-bar-block w3-small w3-hide-small w3-center w3-black">
  <!-- Avatar image in top left corner -->
  <a href="#about" class="w3-bar-item w3-button w3-padding-large w3-hover-gray"  onclick="openPortfolio('about')">
    <i class="fa fa-user w3-xxlarge"></i>
    <p>ABOUT ME</p>
  </a>
  <a href="#project" class="w3-bar-item w3-button w3-padding-large w3-hover-gray"  onclick="openPortfolio('project')">
    <i class="fa fa-eye w3-xxlarge"></i>
    <p>MY WORK</p>
  </a>
  <c:if test="${sessionScope.login.memberid == user.memberid }">
	  <a class="w3-bar-item w3-button w3-padding-large w3-hover-gray"  onclick="javascript:location.href='portfolioform.jsy?id=${sessionScope.login.memberid}'">
	    <i class="fa fa-edit w3-xxlarge"></i>
	    <p>EDIT</p>
	  </a>
  </c:if>
  <c:if test="${sessionScope.login.memberid != user.memberid }">
	  <a class="w3-bar-item w3-button w3-padding-large w3-hover-gray"  onclick="javascript:message_open('../../message/messageWrite.jsy?memberid=${user.memberid}')">
	    <i class="fa fa-commenting w3-xxlarge"></i>
	    <p>CONTACT</p>
	  </a>
  </c:if>
</nav>

<!-- Page Content -->
  <!-- Header/Home -->
<div class="portfoliopage w3-content w3-container w3-animate-left" id="about">
	<h3 class="w3-center"><a class="w3-xxxlarge">${user.slogun }</a></h3>
	<p class="w3-center"><a class="w3-xlarge">${user.introduce }</a></p>
	<div class="w3-content w3-container w3-padding-32">
		<table style="width:98%">
			<tr class="w3-center">
				<td rowspan="7" style="width:40%;">
					<c:if test="${empty user.imageUrl }">
						<img class="w3-circle w3-card" src="../../photo/defaultphoto.png" style="width:70%">
					</c:if>
					<c:if test="${!empty user.imageUrl }" >
						<img class="w3-circle w3-card" src="../../photo/${user.imageUrl }" style="width:70%">
					</c:if>
				</td>
			</tr>
			<tr>
				<td style="width:5%;"><i class="fa fa-user fa-fw w3-hover-text-black w3-xlarge w3-margin-right"></i></td>
				<td style="width:60%;"><a class="w3-xlarge w3-hover-opacity">${user.name }</a></td>
			</tr>
			<tr>
				<td><i class="fa fa-calendar fa-fw w3-hover-text-black w3-xlarge w3-margin-right"></i></td>
				<td><a class="w3-xlarge w3-hover-opacity"><fmt:formatDate value="${user.birth}" type="both" pattern="yyyy"/></a>년<a class="w3-xlarge w3-hover-opacity"><fmt:formatDate value="${user.birth}" type="both" pattern="MM"/></a>월 <a class="w3-xlarge w3-hover-opacity"><fmt:formatDate value="${user.birth}" type="both" pattern="dd"/></a>일</td>
			</tr>
			<tr>
				<td><i class="fa fa-map-marker fa-fw w3-hover-text-black w3-xlarge w3-margin-right"></i></td>
				<td><a class="w3-xlarge w3-hover-opacity">${user.address }</a>거주 </td>
			</tr>
			<tr>
				<td><i class="fa fa-phone fa-fw w3-hover-text-black w3-xlarge w3-margin-right"></i></td>
				<td><a class="w3-xlarge w3-hover-opacity">${user.tel }</a></td>
			</tr>
			<tr>
				<td><i class="fa fa-envelope fa-fw w3-hover-text-black w3-xlarge w3-margin-right"></i></td>
				<td><a class="w3-xlarge w3-hover-opacity">${user.memberid }</a></td>
			</tr>
			<tr>
				<td><i class="fa fa-link fa-fw w3-hover-text-black w3-xlarge w3-margin-right"></i></td>
				<td><a class="w3-xlarge w3-hover-opacity" href="http://${user.site }">${user.site }</a></td>
			</tr>
		</table>
	</div>
  	<hr>
  	<div class="w3-row">
		<div class="w3-container w3-half" style="padding-bottom:50px; width:50%; float:left;">
		  <h3 class="w3-center"><a class="w3-xxxlarge">EXPERIENCE</a><a class="w3-large"></a></h3>
			  <div class="w3-container" style="float:left;">
			  	<c:forEach items="${user.historyList }" var="history">
			  		<c:if test="${history.kindno == 0 }">
			  			<fmt:formatDate value="${history.getdate }" type="both" pattern="yyyy-MM-dd"/>
					  		<c:if test="${history.enddate != null }">
				  			 ~ <fmt:formatDate value="${history.enddate }" type="both" pattern="yyyy-MM-dd"/>
							</c:if>
							 : ${history.content }<br>
					</c:if>
			  	</c:forEach>
			  </div>
		  </div>
		  <div class="w3-container w3-half" style="padding-bottom:50px; width:50%;">
		  	<h3 class="w3-center"><a class="w3-xxxlarge">SKILLS</a><a class="w3-large"></a></h3>
			  <div class="w3-container" style="width:100%; float:left;">
				  <c:forEach items="${user.historyList }" var="history">
			  		<c:if test="${history.kindno == 1 }">
			  			<p class="w3-wide">${history.content }</p>
						<div class="fullbar">
						  <div class="skills" style="width:${history.skillful }%; background-color: #808080;">${history.skillful }%</div>
						</div>
				  	</c:if>
			  	  </c:forEach>
		  	</div>
		</div>
	</div>
</div>

<div class="portfoliopage w3-content w3-container w3-animate-left" id="project" style="display:none">
	<h3 class="w3-center"><a class="w3-xxxlarge">프로젝트</a></h3>
	<c:forEach items="${projectList }" var="project">
			<table style="width:100%;">
				<tr>
					<td style="width:10%;">프로젝트 명</td><td style="width:58%;">${project.subject }</td>
				</tr>
				<c:if test="${!empty project.term }">
					<tr>
						<td>프로젝트 기간</td><td>${project.term }</td>
					</tr>
				</c:if>
				<tr>
					<td>사용 기술</td><td>${project.skills }</td>
				</tr>
				<c:if test="${!empty project.role }">
				<tr>
					<td>맡은 역할</td><td>${project.role }</td>
				</tr>
				</c:if>
				<c:if test="${!empty project.link }">
				<tr>
					<td>프로젝트 링크</td><td>${project.link }</td>
				</tr>
				</c:if>
				<tr>
					<td>대표 사진</td>
					<td colspan="2" align="center">
						<c:if test="${empty project.imagefileUrl }">
							<img id="profilephoto" style="width:15%;"  src="../../photo/defaultphoto.png">
						</c:if>
						<c:if test="${!empty project.imagefileUrl }">
							<img id="profilephoto" style="width:15%;"  src="../../photo/${project.imagefileUrl }">
						</c:if>
						<input type="file" name="imagefile" id="imagefile" style="display:none"/>
					</td>
				</tr>
				<tr>
					<td colspan="3">내용</td>
				</tr>
				<tr>
					<td colspan="3">${project.content }</td>
				</tr>
			</table><hr>
		</c:forEach>
</div>
  
  <!-- Footer -->
  <!--   
  <footer class="w3-content w3-padding-64 w3-text-grey w3-xlarge">
    <i class="fa fa-facebook-official w3-hover-opacity"></i>
    <i class="fa fa-instagram w3-hover-opacity"></i>
    <i class="fa fa-snapchat w3-hover-opacity"></i>
    <i class="fa fa-pinterest-p w3-hover-opacity"></i>
    <i class="fa fa-twitter w3-hover-opacity"></i>
    <i class="fa fa-linkedin w3-hover-opacity"></i>
    <p class="w3-medium">Powered by <a href="https://www.w3schools.com/w3css/default.asp" target="_blank" class="w3-hover-text-green">w3.css</a></p>
  End footer
  </footer> -->

<!-- END PAGE CONTENT -->

</body>
</html>

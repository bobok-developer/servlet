<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>킴스안과</title>
    <link rel="stylesheet" href="/kims_eye/assets/css/common.css">
    <link rel="stylesheet" href="/kims_eye/assets/css/index.css">
    <link rel="stylesheet" href="/kims_eye/assets/css/board.css">
    <link rel="stylesheet" href="/kims_eye/assets/css/introduce.css">
    <link rel="stylesheet" href="/kims_eye/assets/css/mypage.css">
    <link rel="stylesheet" href="/kims_eye/assets/css/reserv.css">
    <link rel="shortcut icon" href="/kims_eye/assets/project_images/favicon.ico">
    <link rel="icon" href="/kims_eye/assets/project_images/favicon.ico">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
    <script src="https://cdn.ckeditor.com/ckeditor5/11.0.1/classic/ckeditor.js"></script>
</head>
<body>
    <div class="top-area">
        <div class="top-area-right">
            <form method="post">
            	<ul class="sitemap">
            		<li><a href="../sitemap"><span>사이트맵</span></a></li>
            	</ul>
	            <ul class="user-menu">
	            	<c:if test="${empty member}">
		                <li><a href="/kims_eye/member/login"><img src="/kims_eye/assets/project_images/icon_login.png" alt="로그인">로그인</a></li>
		                <li><a href="/kims_eye/member/prevjoin"><img src="/kims_eye/assets/project_images/icon_register.png" alt="회원가입">회원가입</a></li>
	                </c:if>
	                <c:if test="${!empty member}">
	              		${member.name}님 환영합니다.   
		                <li><a href="/kims_eye/member/modify"><img src="/kims_eye/assets/project_images/icon_register.png" alt="회원정보수정">회원정보수정</a></li>
	                	<li><button formaction="<%=request.getContextPath() %>/logout"><img src="/kims_eye/assets/project_images/icon_register.png" alt="로그아웃">로그아웃</button></li>
		            </c:if>
	            </ul>
            </form>
        </div>
    </div>
    <script>
		$("<input>").attr({type:"hidden", name:"uri", value:location.pathname+location.search}).appendTo("form");
	</script>
    <div class="header">
        <h1 class="logo"><a href="/kims_eye/index"><img src="/kims_eye/assets/project_images/logo.png" alt="로고"></a></h1>
        <div class="gnb">
            <ul>
                <li><a href="<%=request.getContextPath() %>/info/introduce">병원소개</a></li>
                <li><a href="<%=request.getContextPath() %>/info/clinicinfo">진료/이용안내</a></li>
                <li><a href="<%=request.getContextPath() %>/info/reservation">진료예약/조회</a></li>
                <li><a href="<%=request.getContextPath() %>/board/list?category=1">온라인상담</a></li>
                <li><a href="<%=request.getContextPath() %>/board/list?category=2">건강뉴스</a></li>
            </ul>
        </div>
    </div>
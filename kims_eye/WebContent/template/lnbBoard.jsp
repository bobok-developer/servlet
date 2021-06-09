<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="middle-wrap">
	<div class="lnb-wrap">
	    <h2>게시판</h2>
	    <ul>
	        <li><a href="<%=request.getContextPath() %>/board/list?category=3">공지사항</a></li>
	        <li><a href="<%=request.getContextPath() %>/board/list?category=1">온라인상담</a></li>
	        <li><a href="<%=request.getContextPath() %>/board/list?category=2">건강뉴스</a></li>
	    </ul>
	</div>

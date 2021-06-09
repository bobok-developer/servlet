<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<jsp:include page="../../../template/header.jsp"/>
<jsp:include page="../../../template/lnbBoard.jsp" />
        <div class="content">
            <div class="location-login">
                <span class="home">
                    <a href="index"><img src="/kims_eye/assets/project_images/icon_home.png" alt="홈"></a>
                </span>
            <c:choose>
            	<c:when test="${category==1}"><span>게시판 > 온라인상담</span></c:when>
            	<c:when test="${category==2}"><span>게시판 > 건강뉴스</span></c:when>
            	<c:when test="${category==3}"><span>게시판 > 공지사항</span></c:when>
            </c:choose>
            </div>
            <c:choose>
            	<c:when test="${category==1}"><h1>온라인상담</h1></c:when>
            	<c:when test="${category==2}"><h1>건강뉴스</h1></c:when>
            	<c:when test="${category==3}"><h1>공지사항</h1></c:when>
            </c:choose>
            <div class="notice-area">
                <table class="notice-board">
                    <colgroup>
                        <col class="col-no">
                        <col class="col-title">
                        <col class="col-writer">
                        <col class="col-date">
                        <col class="col-hits">
                    </colgroup>
                    <tr>
                        <th>번호</th>
                        <th>제목</th>
                        <th>작성자</th>
                        <th>작성일</th>
                        <th>조회수</th>
                    </tr>
                    <c:forEach items="${list}" var="board">
					<tr>
						<td>${board.boardno}</td>
						<td><a href="detail?boardno=${board.boardno}"><c:out value="${board.title}"/> [${fn:length(replies)}]</a></td>
						<td>${board.username!=null ? board.username : '(탈퇴회원)'}</td>
						<td>${board.regdate}</td>
						<td>${board.hitcount}</td>
					</tr>
					</c:forEach>
                </table>
            </div>
            <div class="page_wrap">
                <div class="page_nation">
                    <a class="arrow pprev" href="#"></a>
                    <a class="arrow prev" href="#"></a>
                    <a href="#" class="active">1</a>
                    <a href="#">2</a>
                    <a href="#">3</a>
                    <a href="#">4</a>
                    <a href="#">5</a>
                    <a class="arrow next" href="#"></a>
                    <a class="arrow nnext" href="#"></a>
                </div>
            </div>
            <c:if test="${not empty member}">
            <a href="write?category=${param.category}"><button class="write-btn">글쓰기</button></a>
            </c:if>
            <form action="#" method="GET">
                <div class="search">
                    <select name="search-category">
                        <option value="search-title">제목</option>
                        <option value="wearch-titlecon">제목 + 내용</option>
                    </select>
                    <input type="text" name="search-text" placeholder="검색어 입력">
                    <input type="submit" name="search" value="검색">
                </div>
            </form>
        </div>
    </div>
<jsp:include page="../../../template/footer.jsp"/>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<jsp:include page="template/header.jsp"/>
        <div class="middle-area">
            <!-- 이미지 슬라이드 -->
            <div class="ad">
                <div>
                    <img src="/kims_eye/assets/project_images/main_ad01.png" alt="광고1">
                    <img src="/kims_eye/assets/project_images/main_ad02.png" alt="광고2">
                </div>
            </div>
            <script>
                $(".ad div").bxSlider();
            </script>
            <!-- <p>게시판목록</p> -->
            <div class="board">
                <div class="board-left">
                    <h3>공지사항</h3>
                    <h3 class="more"><a href="<%=request.getContextPath() %>/board/list?category=3" title="더보기">+</a></h3>
                    <hr>
                    <table>
                        <colgroup>
                            <col class="col-title">
                            <col class="col-date">
                        </colgroup>
						<c:forEach items="${notice}" var="board" begin="1" end="4">
						<tr>
							<td><a href="board/detail?boardno=${board.boardno}"><c:out value="${board.title}"/></a></td>
							<td>${board.regdate}</td>
						</tr>
						</c:forEach>
                    </table>
                </div>
                <div class="board-middle">
                    <h3>온라인상담</h3>
                    <h3 class="more"><a href="<%=request.getContextPath() %>/board/list?category=1" title="더보기">+</a></h3>
                    <hr>
                    <table>
                        <colgroup>
                            <col class="col-title">
                            <col class="col-date">
                        </colgroup>
                        <c:forEach items="${counseling}" var="board" begin="1" end="4">
						<tr>
							<td><a href="board/detail?boardno=${board.boardno}"><c:out value="${board.title}"/></a></td>
							<td>${board.regdate}</td>
						</tr>
						</c:forEach>
                    </table>
                </div>
                <div class="board-right">
                    <h3>건강뉴스</h3>
                    <h3 class="more"><a href="<%=request.getContextPath() %>/board/list?category=2" title="더보기">+</a></h3>
                    <hr>
                    <table>
                        <colgroup>
                            <col class="col-title">
                            <col class="col-date">
                        </colgroup>
                        <c:forEach items="${news}" var="board" begin="1" end="4">
						<tr>
							<td><a href="board/detail?boardno=${board.boardno}"><c:out value="${board.title}"/></a></td>
							<td>${board.regdate}</td>
						</tr>
						</c:forEach>
                    </table>
                </div>
            </div>
        </div>
	<jsp:include page="template/footer.jsp"/>

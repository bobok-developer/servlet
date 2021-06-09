<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<jsp:include page="../../../template/header.jsp"/>
<jsp:include page="../../../template/lnbBoard.jsp"/>
<div class="content-board">
	<div class="location-login">
	    <span class="home">
	        <a href="../index"><img src="/kims_eye/assets/project_images/icon_home.png" alt="홈"></a>
	    </span>
	    <span>게시판 > 온라인상담</span>
	</div>
	<h1>온라인상담</h1>
	<div class="reading-content">
		<table class="reading">
		<colgroup>
		<col class="col-reading1">
		<col class="col-reading2">
		</colgroup>
			<tr>
			    <td>제목</td>
			    <td>${board.title}</td>
			</tr>
			<tr>
			    <td>글쓴이</td>
			    <td>${board.username!=null ? board.username : '(탈퇴회원)'}</td>
			</tr>
			<tr>
			    <td>진료과목</td>
			    <td>라식/라섹</td>
			</tr>
			<tr>
			    <td>이메일</td>
			    <td>*****@********</td>
			</tr>
			<tr>
			    <td>날짜</td>
			    <td>${board.regdate}</td>
			</tr>
			<tr>
		     	<td>첨부파일</td>
				<td>
				<c:forEach items="${board.attachs}" var="attach">
				<a class="dl" href="/upload/${attach.uploadPath}/${attach.uuid}">${attach.fileName}</a>
				</c:forEach>
				</td>
	        </tr>
		</table>
    	<span>${board.content}</span>
	    <div class="reply-wrap">
	 		<div class="reply-header">
				<div class="reply-count">댓글 <span>${fn:length(replies)}</span></div>
				<div><button class="reply-content-toggle">댓글 열기</button></div>
			</div>
			<div class="reply-content-wrapper">
				<c:forEach items="${replies}" var="reply">
				<div class="reply-content">
					<div class="reply-content-header">
						<span>${reply.username}</span>
						<span>${reply.regdate}</span>
					</div>
					<div class="reply-body">${reply.content}</div>
					<div class="reply-form reply-modify">
						<form method="post" action="modifyReply">
							<textarea rows="10" cols="30" name="content">${reply.content}</textarea>
							<input type="hidden" name="boardno" value="${board.boardno}">
							<input type="hidden" name="replyno" value="${reply.replyno}"> 
							<button>댓글등록</button>
						</form>
					</div>
					<div class="reply-btns">
						<c:if test="${not empty member and member.userId eq reply.userid}">
						<form action="removeReply" method="post">
							<button type="button" class="btn-modify">수정</button>
							<input type="hidden" name="replyno" value="${reply.replyno}"> 
							<input type="hidden" name="boardno" value="${board.boardno}"> 
							<button>삭제</button>
						</form>
						</c:if>
					</div>
				</div>
				</c:forEach>
	    	</div>
			<div class="reply-form">
				<form method="post" action="writeReply">
					<textarea rows="10" cols="30" name="content"></textarea>
					<input type="hidden" name="boardno" value="${board.boardno}">
					<button>댓글등록</button>
				</form>
			</div>
		</div>
	</div>
	<div class="do-prev">
		<input class="list-btn" type="button" value="목록">
	</div>
		<c:if test="${not empty member and member.userId eq board.userid}">
	    <div class="small-btn">
	        <input type="button" name="remove" value="글삭제"  onclick="if(!confirm('정말로 이 글을 삭제하시겠습니까?')){return false;};
	        alert('삭제되었습니다.'); location.href = 'remove?boardno=${param.boardno}'">
	        <input type="button" name="modify" value="글수정"  onclick="if(!confirm('이 글을 수정하시겠습니까?')){return false;};
	        location.href = 'modify?boardno=${param.boardno}'">
	    </div>
	    </c:if>  
<script>
	$(".dl").click(function() {
		event.preventDefault();
		var realPath = encodeURIComponent($(this).attr("href"));
		var fileName = encodeURIComponent($(this).text());
		
		console.log(realPath);
		console.log(fileName);
		
		var dlURI = '<%=request.getContextPath()%>/download';
		dlURI += '?realPath=' + realPath;
		dlURI += '&fileName=' + fileName;
		console.log(dlURI);
		location.href = dlURI;
	});
	
	$(".reply-content-toggle").click(function() {
		var $wrap = $(".reply-content-wrapper");
		if($wrap.is(":visible")) {
			$(this).text("댓글 열기");
			$wrap.stop().slideUp(0);
		}
		else {
			$(this).text("댓글 닫기");
			$wrap.stop().slideDown(0);
		}
	});
	
	$(".btn-modify").click(function() {
		$(".reply-form").hide();
		$(this).parent().parent().prev().show();
	});
</script>
<jsp:include page="../../../template/footer.jsp"/>

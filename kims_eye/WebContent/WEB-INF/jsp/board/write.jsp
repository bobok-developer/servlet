<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="../../../template/header.jsp" />
<jsp:include page="../../../template/lnbBoard.jsp"/>
<form method="post" enctype="multipart/form-data">
	<div class="middle-wrap">
		<h1>${title}</h1>
		<!-- 글작성폼 -->
		<div class="modify-area">
			<table class="modify-top">
				<colgroup>
					<col class="modify-col1">
					<col class="modify-col2">
				</colgroup>
				<tr>
					<td>제목</td>
					<td><input class="title" type="text" name="title" value="${board.title}"></td>
				</tr>
				<tr>
					<td>글쓴이</td>
					<td>${member.name}</td>
				</tr>
				<tr>
					<td>진료과목</td>
					<td><select name="진료과목">
							<option value="선택">선택</option>
							<option value="백내장">백내장</option>
							<option value="녹내장">녹내장</option>
							<option value="라식/라섹">라식/라섹</option>
							<option value="노안">노안</option>
							<option value="드림렌즈">드림렌즈</option>
							<option value="기타">기타</option>
					</select></td>
				</tr>
				<tr>
					<td>이메일</td>
					<td><input type="email" value="${member.email}"></td>
				</tr>
				<tr>
					<td>비밀글</td>
					<td><label><input type="checkbox" name="secret">설정</label></td>
				</tr>
			</table>
			<div class="modify-content">
				<textarea name="content" id="editor">${board.content}</textarea>
			</div>
			<input type="file" name="file1">
			<input type="file" name="file2">
			<input type="file" name="file3">
		</div>
	<div class="modify-btn-wrap">
		<div class="modify-btn">
			<input type="button" id="cancel" class="do-prev" value="취소">
			<button class="modify" ${title=='글수정' ? 'formenctype="application/x-www-form-urlencoded"' : ''}
				onclick="if(!confirm('상담글 작성을 완료하시겠습니까?')){return false;};
				alert('정상적으로 등록되었습니다.')">${title}</button>
		</div>
	</div>
	<input type="hidden" name="boardno" value="${param.boardno}">
	<input type="hidden" name="category" value="${param.category}">
</form>
<script>
    ClassicEditor
        .create( document.querySelector( '#editor' ), {
            // 제거 하고싶은 플러그인 (배열)
             removePlugins: [ 'ImageUpload' ]
        } )
        .catch( error => {
            console.error( error );
        } );
    </script>
<jsp:include page="../../../template/footer.jsp" />

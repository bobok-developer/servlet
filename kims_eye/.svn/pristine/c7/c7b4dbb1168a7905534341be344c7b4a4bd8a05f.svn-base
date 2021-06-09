<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="../../../template/header.jsp"/>
<jsp:include page="../../../template/lnbMypage.jsp" />
	    <span>마이페이지 > 회원가입</span>
	</div>
	<h1>회원가입</h1>
	<form method="post" action="<%=request.getContextPath()%>/member/join" name="userInfo" onsubmit="return checkValue()">
	    <table class="signin-form">
	        <tr>
	            <th>아이디 *</th>
	            <td>
	                <input type="text" name="userId" placeholder="사용하실 아이디를 입력해 주세요." title="사용하실 아이디를 입력해 주세요." autofocus>
	                <input type="button" name="dupck" value="중복확인" onclick="alert('사용하실 수 있는 아이디입니다.')">
	            </td>
	            <td>4자 이상 12자 이하</td>
	        </tr>
	        
	        <tr>
	            <th>비밀번호 *</th>
	            <td><input type="password" name="password" placeholder="사용하실 비밀번호를 입력해 주세요." title="사용하실 비밀번호를 입력해 주세요."></td>
	            <td>영문+숫자 6~16자 이하</td>
	        </tr>
	        <tr>
	            <th>비밀번호 확인 *</th>
	            <td><input type="password" name="pwck" onchange="check_pw()" placeholder="다시 한번 입력해 주세요."></td>
	            <td><span id="check"></span></td>
	        </tr>
	        <tr>
	            <th>이름(실명) *</th>
	            <td><input type="text" name="name"></td>
	            <td></td>
	        </tr>
	        <tr>
	            <th>생년월일</th>
	            <td class="birth">
	                <input type="date" min="1930" max="2021" name="birthDate" placeholder="1970">
	            </td>
	            <td></td>
	        </tr>
	        <tr>
	            <th>전화번호 *</th>
	            <td class="tel">
	                <input type="number" name="num1">
	                <label>-</label>
	                <input type="number" name="num2">
	                <label>-</label>
	                <input type="number" name="num3">
	            </td>
	            <td>예약 안내를 위해 정확히 입력해 주세요.</td>
	        </tr>
	        <tr>
	            <th>이메일</th>
	            <td class="email"><input type="text" name="email" placeholder="example@eyes.com"></td>
	            <td>상담 답변을 위해 정확히 입력해 주세요.</td>
	        </tr>
	        <tr>
	            <th>정보발송동의</th>
	            <td>
	                <ul class="info-send">
	                    <li><label><input type="checkbox" name="sms_consent" value="SMS">SMS</label></li>
	                    <li><label><input type="checkbox" name="email_consent" value="email">email</label></li>
	                </ul>
	            </td>
	            <td></td>
	        </tr>
	    </table>
	    <div class="submit-btn-wrap">
	        <div class="submit-btn-step2">
	            <input type="button" class="btn1" value="취소" onclick="if(!confirm('회원가입을 취소하시겠습니까?')){return false;};
	                alert('회원가입이 취소되었습니다.'); location.href = 'index.html'">
	            <input type="submit" class="btn2" value="가입완료" onclick="if(!confirm('회원가입을 하시겠습니까?')){return false;};">
	            </div>
	        </div>
	    </form>
	    <script>
			$("<input>").attr({type:"hidden", name:"uri", value:location.pathname+location.search}).appendTo("form");
		</script>
	</div>


<jsp:include page="../../../template/footer.jsp"/>
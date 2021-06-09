<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="../../../template/header.jsp"/>
<jsp:include page="../../../template/lnbMypage.jsp" />

        <span>마이페이지 > 회원정보수정</span>
    </div>
    <h1>회원정보수정</h1>
    <div class="myinfo-area">
        <form method="post">
            <table>
                <tr>
                    <th>아이디 *</th>
                    <td><input type="text" name="userId" disabled value="${member.userId}"></td>
                </tr>
                <tr>
                    <th>이름(실명) *</th>
                    <td><input type="text" name="name" required value="${member.name}"></td>
                </tr>
                <tr>
                    <th>비밀번호 *</th>
                    <td><input type="password" name="password" required value="${member.password}"></td>
                </tr>
                <tr>
                    <th>비밀번호 확인 *</th>
                    <td><input type="password" name="pwck" required value="${member.password}"></td>
                </tr>
                <tr>
                    <th>생년월일</th>
                    <td class="birth">
						<input type="date" min="1930" max="2021" name="birthDate" placeholder="${member.birthDate}">
                    </td>
                </tr>
                <tr>
                    <th>전화번호 *</th>
                    <td class="tel">
	                    <input type="number" name="num1" required value="${member.num1}">
		                <label>-</label>
		                <input type="number" name="num2" required value="${member.num2}">
		                <label>-</label>
		                <input type="number" name="num3" required value="${member.num3}">
                    </td>
                </tr>
                <tr>
                    <th>이메일</th>
                    <td class="email"><input type="text" name="email" value="${member.email}"></td>
                </tr>
                <tr>
                    <th>정보발송동의</th>
                    <td>
                        <ul class="info-send">
                            <li><label><input type="checkbox" name="sms_consent" value="SMS" >SMS</label></li>
                            <li><label><input type="checkbox" name="email_consent" value="email">email</label></li>
                        </ul>
                    </td>
                </tr>
            </table>
            <div class="submit-btn-wrap step2">
                <div class="submit-btn-info">
                    <input type="button" class="btn1" value="취소" onclick="if(!confirm('수정을 취소하시겠습니까?')){return false;};
                    location.href = 'index'">
                     <input type="submit" class="btn2" value="수정" onclick="if(!confirm('회원정보를 수정하시겠습니까?')){return false;};
                     alert('수정이 완료되었습니다. 다시 로그인 해주세요.')">
                     <input type="hidden" name="userId" value="${member.userId}"> 
                </div>
            </div>
        </form>
    </div>
</div>
<jsp:include page="../../../template/footer.jsp"/>
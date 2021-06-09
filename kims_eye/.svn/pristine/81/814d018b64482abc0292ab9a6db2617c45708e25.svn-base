<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../../../template/header.jsp"/>
<jsp:include page="../../../template/lnbMypage.jsp" />

<%
	String idsave = null;
	for(Cookie cookie : request.getCookies()) {
		if(cookie.getName().equals("idsave")) {
			idsave = cookie.getValue();
		}
	}
%>

                <span>마이페이지 > 로그인</span>
            </div>
            <h1>로그인</h1>
            <div class="login-area">
                <img src="/kims_eye/assets/project_images/logo.png" alt="로고">
                <form method="post" action="<%=request.getContextPath()%>/member/login">
                    <table class="idpw">
                        <tr>
                            <th>아이디</th>
                            <td><input type="text" name="id" value="${cookie.idsave.value}" required autofocus></td>
                        </tr>
                        <tr>
                            <th>비밀번호</th>
                            <td><input type="password" name="pw" required></td>
                        </tr>
                    </table>
                    <button class="loginbtn">로그인</button>
                    <label>아이디 저장
						<input type="checkbox" name="idsave" ${empty cookie.idsave.value ? '' : 'checked'}>
					</label>
                    <div class="info-signin">
                        <span>킴스안과 홈페이지에 가입하시겠습니까?</span>
                        <input type="button" class="sign-btn" value="회원가입" onclick="location='prevjoin'">
                    </div>
                </form>
                <script>
					$("<input>").attr({type:"hidden", name:"uri", value:location.pathname+location.search}).appendTo("form");
				</script>
            </div>
        </div>
    </div>
<jsp:include page="../../../template/footer.jsp"/>

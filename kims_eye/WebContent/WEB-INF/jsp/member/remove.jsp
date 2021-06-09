<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../../../template/header.jsp"/>
<jsp:include page="../../../template/lnbMypage.jsp" />
                <span>마이페이지 > 회원탈퇴</span>
            </div>
            <h1>회원탈퇴</h1>
            <div class="login-area">
                <img src="/kims_eye/assets/project_images/logo.png" alt="로고">
                <form method="post">
                <!-- action="<<%--  --%>%=request.getContextPath()%>/remove"  -->
                    <table class="idpw">
                        <tr>
                            <th>비밀번호</th>
                            <td><input type="password" name="password" required></td>
                        </tr>
                    </table>
					<span>계속 진행하려면 비밀번호를 입력하세요.</span>
                    <button class="loginbtn do-remove">회원탈퇴</button>
                </form>
                <script>
                	$(".do-remove").click(function() {
						confirm("정말 킴스안과를 탈퇴하시겠습니까?");
					});
                </script>
<!--                 <script>
					$("<input>").attr({type:"hidden", name:"uri", value:location.pathname+location.search}).appendTo("form");
				</script> -->
            </div>
        </div>
    </div>
<jsp:include page="../../../template/footer.jsp"/>

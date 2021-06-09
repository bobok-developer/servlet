<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="../../../template/header.jsp"/>
<jsp:include page="../../../template/lnbMypage.jsp" />
	    <span>마이페이지 > 회원가입</span>
	</div>
	<h1>회원가입</h1>
	<form method="post" class="agree">
		<div class="agree1">
		    <span>이용약관</span>
		    <div class="agree1-text">
		        <h4>제 1 장 총칙</h4>
		        <h4>제1조 (목적)</h4>
		        <p>
		            본 약관은 킴스안과이(가) 제공하는 인터넷 관련 서비스(킴스안과 http://www.levinni.site/ 이하 "서비스")의 이용함에 있어
		            본원과 이용자(또는 회원)와의 권리, 이용조건 및 절차, 책임사항 등 기타 기본적인 사항을 구체적으로 규정함을 목적으로 합니다.
		        </p>
		        <br>
		        <h4>제2조 (이용약관의 효력 및 변경)</h4>
		        <ol>
		            <li>이 약관은 본원이 제공하는 서비스에서 이용자들이 쉽게 알 수 있도록 온라인으로 공시함으로써 효력을 발생합니다.</li>
		            <li>본원은 합리적인 사유가 발생할 경우 대한민국 법령과 국제법에 위배되지 않는 범위 안에서 본원은 이 약관을 개정할 수 있습니다.</li>
		            <li>개정된 약관은 온라인에서 공지함으로써 효력을 발휘하며, 이용자의 권리 또는 의무 등 중요한 규정의 개정은 개정 7일전 온라인을 통하여 공지합니다.</li>
		            <li>이용자는 변경된 약관에 동의하지 않으면, 언제나 서비스 이용을 중단하고, 이용계약을 해지할 수 있습니다.<br>단, 약관의 효력발생일 이후에 계속적인 서비스 이용은 약관의 변경사항에 대한 이용자의 동의로 간주됩니다.</li>
		        </ol>
		    </div>
		</div>
		<label><input type="checkbox" name="agree" value="true" required><span>위 이용약관에 동의합니다.</span></label>
		<div class="agree2">
		    <span>개인정보처리방침</span>
		    <div class="agree2-text">
		        <h5 >수집하는 개인정보의 항목</h5>
		        <p >회사는 회원가입, 상담, 서비스 신청 등을 위해 아래와 같은 개인정보를 수집하고 있습니다.</p>
		        <ul>
		            <li><strong >수집항목</strong> : </li>
		            <li><strong >개인정보 수집방법</strong> : </li>
		        </ul>
		
		        <h5 >개인정보의 수집 및 이용목적</h5>
		        <p >회사는 수집한 개인정보를 다음의 목적을 위해 활용합니다.</p>
		        <ul>
		            <li>
		                <strong >- 서비스 제공에 관한 계약 이행 및 서비스 제공에 따른 요금정산</strong>
		                <p >구매 및 요금 결제, 물품배송 또는 청구지 등 발송</p>
		            </li>
		            <li>
		                <strong >- 회원 관리</strong>
		                <p >회원제 서비스 이용에 따른 본인확인, 개인 식별, 불량회원의 부정 이용 방지와 비인가 사용 방지, 가입 의사 확인, 연령확인</p>
		            </li>
		        </ul>
		
		        <h5 >개인정보의 보유 및 이용기간</h5>
		        <p >회사는 개인정보 수집 및 이용목적이 달성된 후에는 예외 없이 해당 정보를 지체 없이 파기합니다.</p>
		    </div>
		</div>
		<label><input type="checkbox" name="agree" value="true" required><span>위 개인정보처리방침에 동의합니다.</span></label>
		<div class="submit-btn-wrap">
		    <div class="submit-btn">
		        <input type="button" class="btn1" value="가입취소" onclick="location='index'">
                <input type="submit" class="btn2" value="다음으로" >
            </div>
        </div>
	</form>
	</div>
</div>


<jsp:include page="../../../template/footer.jsp"/>
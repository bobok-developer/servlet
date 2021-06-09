<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="../../../template/header.jsp"/>
<jsp:include page="../../../template/lnbreserv.jsp"/>

    <span>진료예약/조회 > 진료예약</span>
</div>
<h1>진료예약</h1>
<div class="reserv-ex">
                <p>온라인 예약은 <span>당일예약이 불가능</span>합니다.</p>
                <p>당일 진료를 원하시면 직접 내원하셔서 <span>순서대로 진료</span> 받으시면 됩니다.</p>
                <p>평일 5시 이후로는 전 날 예약이 마감 되오니 전 날 예약은 5시 이전에 예약 부탁드립니다.</p>
                <p class="bold">선택하신 시간은 확정 된 것이 아니고 확인 후 전화 드리겠습니다.</p>
            </div>  
            <!-- 설명부분 -->
            <form method="GET" action="reser-check.html">
                <div class="modify-area">
                    <table class="reservation-form">
                        <colgroup>
                            <col class="reserv-col1">
                            <col class="reserv-col2">
                        </colgroup>
                        <tr>
                            <td>진료과목</td>
                            <td>
                                <select name="진료과목">
                                    <option value="희망진료선택">희망진료선택</option>
                                    <option value="백내장">백내장</option>
                                    <option value="녹내장">녹내장</option>
                                    <option value="라식/라섹">라식/라섹</option>
                                    <option value="노안">노안</option>
                                    <option value="드림렌즈">드림렌즈</option>
                                    <option value="기타">기타</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td>예약일 및 시간</td>
                            <td><input class="date" type="date" name="예약일" min="2021-02-09">
                                <input class="time" type="time" name="예약시간" min="10:00" max="17:00">
                                <span></span>
                            </td>
                        </tr>
                        <tr>
                            <td>이름</td>
                            <td>김*랑</td>
                        </tr>
                        
                        <tr>
                            <td>이메일</td>
                            <td><input type="email" name="email" placeholder="예약확인 메일이 발송되오니 정확히 입력해 주세요." title="예약확인 메일이 발송되오니 정확히 입력해 주세요."></td>
                        </tr>
                        <tr>
                            <td>전화번호</td>
                            <td><input type="number" name="phone" placeholder="예약확인 전화가 발신되오니 정확히 입력해 주세요." title="예약확인 전화가 발신되오니 정확히 입력해 주세요."></td>
                        </tr>
                        <tr>
                            <td>초/재진</td>
                            <td><label><input type="radio" name="clinck">초진</label><label><input type="radio" name="clinck">재진</label></td>
                        </tr>
                    </table>
                    <div class="modify-content">
                        <textarea name="작성본문" wrap="soft" placeholder="진료 받고 싶으신 내용을 입력해 주세요."></textarea>
                    </div>
                </div>
                <div class="modify-btn-wrap">
                    <div class="modify-btn">
                        <input type="button" class="cancel reserv" value="취소" onclick="if(!confirm('예약을 취소하시겠습니까?')){return false;};
                            alert('진료예약이 취소되었습니다.'); location.href = 'reser-check.html'">
                        <input type="submit" class="modify" value="작성완료" onclick="if(!confirm('진료를 예약하시겠습니까?')){return false;};
                             alert('예약이 완료되었습니다. 확인 후 연락드리겠습니다.')">
                    </div>
                </div>
            </form>
</div>
</div>
<jsp:include page="../../../template/footer.jsp"/>
package member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.service.MemberService;
import member.service.MemberServiceImpl;
import member.vo.Member;

@WebServlet("/member/modify")
public class modify extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("../WEB-INF/jsp/member/modify.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 아이디(고정), 이름, 비밀번호, 생년월일, 전화번호, 이메일, 발송동의
		
		String userId = req.getParameter("userId");
		String name = req.getParameter("name");
		String password = req.getParameter("password");
		String birthDate = req.getParameter("birthDate");
		String num1 = req.getParameter("num1");
		String num2 = req.getParameter("num2");
		String num3 = req.getParameter("num3");
		String email = req.getParameter("email");
		String sms_consent = req.getParameter("sms_consent");
		String email_consent = req.getParameter("email_consent");
		
		MemberService service = new MemberServiceImpl();
		Member member = new Member(userId, name, password, birthDate, num1, num2, num3, email, sms_consent, email_consent);
		service.modify(member);
		req.getSession().invalidate();
		resp.sendRedirect("../member/login");
		
	}
	
	
}

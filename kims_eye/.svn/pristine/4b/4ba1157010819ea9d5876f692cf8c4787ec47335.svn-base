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

@WebServlet("/member/join")
public class Join extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("../WEB-INF/jsp/member/join.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String userId = req.getParameter("userId");
		String password = req.getParameter("password");
		String pwck = req.getParameter("pwck"); // 수정 부분
		String name = req.getParameter("name");
		String birthDate = req.getParameter("birthDate");
		String num1 = req.getParameter("num1");
		String num2 = req.getParameter("num2");
		String num3 = req.getParameter("num3");
		String email = req.getParameter("email");
		String sms_consent = req.getParameter("sms_consent");
		String email_consent = req.getParameter("email_consent");
		
		Member member = new Member(userId, password, name, birthDate, num1, num2, num3, email, sms_consent, email_consent, null);
		System.out.println(member);
		MemberService service = new MemberServiceImpl();
		service.join(member);
		
		resp.sendRedirect("../member/login");
	}
	
}

package member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import member.service.MemberService;
import member.service.MemberServiceImpl;
import member.vo.Member;

@WebServlet("/member/login")
public class Login extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 페이지 포워드
		req.getRequestDispatcher("../WEB-INF/jsp/member/login.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 아이디, 패스워드 값 확인 (파라미터로 넘어옴)
//		req.setCharacterEncoding("utf-8"); // HTTP 세상은 1바이트라. 한글처리
		
		Member member = new Member();
		member.setUserId(req.getParameter("id"));
		member.setPassword(req.getParameter("pw"));
		
		System.out.println(member);
		MemberService service = new MemberServiceImpl();
		
		// 분기
		Member result = service.login(member);
		System.out.println(result);
		if(result != null) {
			// 로그인 성공시
			HttpSession session = req.getSession(); // 세션생성
			session.setAttribute("member", result);
			
			String idsave = req.getParameter("idsave");
			System.out.println(idsave);
			if(idsave != null) {
				// 쿠키사용
				Cookie cookie = new Cookie("idsave", member.getUserId());
				// 시간 안 정하면 세션이랑 시간이 똑같음.
				cookie.setMaxAge(60 * 60 * 24 * 365);
				resp.addCookie(cookie);
			}
			else {
				for(Cookie cookie : req.getCookies()) {
					if(cookie.getName().equals("idsave")) {
						cookie.setMaxAge(0);
						resp.addCookie(cookie);
					}
				}
			}
		}
		resp.sendRedirect("../index");
//		resp.sendRedirect(req.getParameter("uri"));
	}
}

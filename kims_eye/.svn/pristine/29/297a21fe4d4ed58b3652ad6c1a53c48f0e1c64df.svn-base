package member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.service.BoardService;
import board.service.BoardServiceImpl;
import member.service.MemberService;
import member.service.MemberServiceImpl;
import member.vo.Member;

@WebServlet("/member/remove")
public class Remove extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("../WEB-INF/jsp/member/remove.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Member member = (Member) req.getSession().getAttribute("member");
//		System.out.println("member :: " + member);
		MemberService service = new MemberServiceImpl();
		
//		System.out.println("member.getPassword() :: " + member.getPassword());
//		System.out.println("req.getParameter(\"password\"):: " + req.getParameter("password"));
		if(member.getPassword().equals(req.getParameter("password"))) {
			service.remove(member);
			req.getSession().invalidate();
		}
	
		resp.sendRedirect("../index");
	}
}

package reply.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.service.ReplyService;
import board.service.ReplyServiceImpl;
import board.vo.Reply;
import util.Common;

@WebServlet("/board/removeReply")
public class Remove extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 
		int replyno = Integer.parseInt(req.getParameter("replyno"));
		int boardno = Integer.parseInt(req.getParameter("boardno"));
		
		ReplyService service = new ReplyServiceImpl();
		if (!Common.getSessionMember(req).getUserId().equals(service.findBy(replyno).getUserid())) {
			resp.sendRedirect(req.getContextPath() + "/index"); // 다른 사용자임을 인지하면 초기화면으로 감.
			return;
		}
		
		service.remove(replyno);

		resp.sendRedirect("detail?boardno=" + boardno);
	}
}


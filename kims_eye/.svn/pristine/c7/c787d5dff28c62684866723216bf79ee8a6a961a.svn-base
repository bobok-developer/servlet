package board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.service.BoardService;
import board.service.BoardServiceImpl;
import board.vo.Board;
import util.Common;

@WebServlet("/board/modify")
public class Modify extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		BoardService service = new BoardServiceImpl();
		Board board = service.findBy(Integer.parseInt(req.getParameter("boardno")));
		req.setAttribute("board", board);
		req.setAttribute("title", "글수정");
		
		req.getRequestDispatcher("../WEB-INF/jsp/board/write.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 타이틀, 콘텐트, 카테고리, 작성자, 
		String title = req.getParameter("title");
		String content = req.getParameter("content");
		int boardno = Common.getDefaultValue(req.getParameter("boardno"));
		BoardService service = new BoardServiceImpl();
		
		if(!Common.getSessionMember(req).getUserId().equals(service.findBy(boardno).getUserid())) {
			resp.sendRedirect(req.getContextPath() + "/index"); // 다른 사용자임을 인지하면 초기화면으로 감.
			return;
		}		
		
		Board board = new Board(boardno, title, content);
		service.modify(board);
		resp.sendRedirect("detail?boardno=" + boardno);
	}
}

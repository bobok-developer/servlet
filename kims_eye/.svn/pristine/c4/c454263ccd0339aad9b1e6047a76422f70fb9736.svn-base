package board.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.service.BoardService;
import board.service.BoardServiceImpl;
import board.service.ReplyService;
import board.service.ReplyServiceImpl;
import board.vo.Board;
import board.vo.Reply;
import util.Common;

@WebServlet("/board/list")
public class BoardList extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		BoardService service = new BoardServiceImpl();
		Integer category = Common.getDefaultValue(req.getParameter("category"));
		List<Board> list = service.list(category);
		req.setAttribute("list", list);
		req.setAttribute("category", category);
		
//		ReplyService replyService = new ReplyServiceImpl();
//		int boardno = Integer.parseInt(req.getParameter("boardno"));
//		List<Reply> replies = replyService.list(boardno);
//		req.setAttribute("replies", replies);
		
		req.getRequestDispatcher("../WEB-INF/jsp/board/list.jsp").forward(req, resp);
	}
}

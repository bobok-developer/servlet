

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.service.BoardService;
import board.service.BoardServiceImpl;
import board.vo.Board;
import util.Common;

@WebServlet("/index")
public class Index extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		BoardService service = new BoardServiceImpl();
		List<Board> counseling = service.list(1);
		List<Board> news = service.list(2);
		List<Board> notice = service.list(3);
		req.setAttribute("counseling" , counseling);
		req.setAttribute("news", news);
		req.setAttribute("notice", notice);
		req.getRequestDispatcher("index.jsp").forward(req, resp);
	}

}

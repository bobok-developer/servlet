package board.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.service.BoardService;
import board.service.BoardServiceImpl;
import board.vo.Attach;
import board.vo.Board;
import util.Common;

@WebServlet("/board/remove")
public class Remove extends HttpServlet{

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 로그인 된사용자의 아이디와 해당 글의 작성자 아이디가 일치해야 함.
		Board board = Common.getThisContent(req);
		BoardService service = new BoardServiceImpl();
		int category = board.getCategory();
		List<Attach> attachs = service.remove(board.getBoardno());
		
		// 물리적 파일 제거
		for(Attach attach : attachs) { // 실제 경로를 알기 위해
			File file = new File(req.getRealPath("upload") + File.separator + attach.getUploadPath()
			+ File.separator + attach.getUuid());
			if(file.exists()) file.delete();
		}
		resp.sendRedirect("list?category=" + category);
	}

}

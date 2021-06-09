package util;

import java.util.Objects;

import javax.servlet.http.HttpServletRequest;

import board.service.BoardService;
import board.service.BoardServiceImpl;
import board.vo.Board;
import member.vo.Member;

public class Common {
	public static int getDefaultValue(String source, int fixValue, int realValue) {
		int ret;
		int category;
		if(Objects.isNull(source) || source.equals("")) {
			ret = fixValue;
		}
		else {
			ret = Integer.valueOf(source);
		}
		return ret;
	}
	public static int getDefaultValue(String source) {
		return  getDefaultValue(source, 1, 1);
	}
	
	public static Member getSessionMember(HttpServletRequest req) {
		Object memberObj = req.getSession().getAttribute("member");
		return (Member) memberObj == null ? null : (Member) memberObj;
	}
	
	public static boolean isEmpty(String str) {
		return str == null || str.equals("");
	}
	
	public static Board getThisContent(HttpServletRequest req) {
		if(isEmpty(req.getParameter("boardno"))) {
			return null;
		}
		int boardno = Integer.parseInt(req.getParameter("boardno"));
		BoardService service = new BoardServiceImpl();
		
		Board board = service.findBy(boardno);
		System.out.println(board);
		Member member = getSessionMember(req);
		System.out.println(member);
		if(member == null || !board.getUserid().equals(member.getUserId())) {
			return null;
		}
		else return board;
	}
}

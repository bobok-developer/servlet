package board.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import board.vo.Reply;
import util.DBconn;

public class ReplyDao {
	public static void main(String[] args) {
		// 댓글 조회 테스트
		ReplyDao dao = new ReplyDao();
		dao.list(38).forEach(System.out::println);
		
		// 댓글 작성
		Reply reply = new Reply("자바에서 작성한 댓글", "javava", 38);
		dao.write(reply);
		System.out.println();
		// 조회
		dao.list(38).forEach(System.out::println);
		
		// 댓글 수정
		reply = new Reply(11, "자바에서 수정한 댓글");
		dao.modify(reply);
		// 조회
		System.out.println();
		dao.list(38).forEach(System.out::println);
		
		// 댓글 삭제
		dao.remove(8);
		// 조회
		System.out.println();
		dao.list(38).forEach(System.out::println);
	}

	public void write(Reply reply) {
		Connection connection = DBconn.getConnection();
		// 문장 작성
		try {
			// 전처리 문장을 선언
			String sql = "INSERT INTO REPLY(REPLYNO, CONTENT, USERID, REGDATE, BOARDNO)\r\n" + 
					"VALUES(SEQ_REPLY.nextval, ?, ?, SYSDATE, ?)";

			// 전처리 문장 생성
			PreparedStatement pstmt = connection.prepareStatement(sql);
			
			// 전처리 문장 파라미터 바인딩
			int idx = 1;
			pstmt.setString(idx++, reply.getContent());
			pstmt.setString(idx++, reply.getUserid());
			pstmt.setInt(idx++, reply.getBoardno());

			// 실행
			pstmt.executeUpdate();
		}
		catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public void modify(Reply reply) {
		Connection connection = DBconn.getConnection();
		// 문장 작성
		try {
			// 전처리 문장을 선언
			String sql = "UPDATE REPLY SET\r\n" + 
					"    CONTENT = ?,\r\n" + 
					"    REGDATE = SYSDATE\r\n" + 
					"WHERE REPLYNO = ?";

			// 전처리 문장 생성
			PreparedStatement pstmt = connection.prepareStatement(sql);
			
			// 전처리 문장 파라미터 바인딩
			int idx = 1;
			pstmt.setString(idx++, reply.getContent());
			pstmt.setInt(idx++, reply.getReplyno());

			// 실행
			pstmt.executeUpdate();
		}
		catch (SQLException e) {
			e.printStackTrace();
		}		
	}

	public void remove(int replyno) {
		Connection connection = DBconn.getConnection();
		// 문장 작성
		try {
			// 전처리 문장을 선언
			String sql = "DELETE REPLY\r\n" + 
					"WHERE REPLYNO = ?";

			// 전처리 문장 생성
			PreparedStatement pstmt = connection.prepareStatement(sql);
			
			// 전처리 문장 파라미터 바인딩
			int idx = 1;
			pstmt.setInt(idx++, replyno);

			// 실행
			pstmt.executeUpdate();
		}
		catch (SQLException e) {
			e.printStackTrace();
		}			
	}

	public List<Reply> list(int boardno) {
		ArrayList<Reply> result = new ArrayList<Reply>();
		Connection conn = DBconn.getConnection();
		String sql = "SELECT REPLYNO, CONTENT, USERID,\r\n" + 
				"CASE\r\n" + 
				"WHEN SYSDATE - REGDATE < 1 THEN TO_CHAR(REGDATE, 'HH24:MI:SS')\r\n" + 
				"ELSE TO_CHAR(REGDATE, 'YY/MM/DD')\r\n" + 
				"END REGDATE, BOARDNO,\r\n" + 
				"(SELECT NAME FROM MEMBER M WHERE M.USERID = R.USERID) USERNAME\r\n" + 
				"FROM REPLY R\r\n" + 
				"WHERE BOARDNO = ? AND REPLYNO > 0";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, boardno);
			
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				int idx = 1;
				Reply reply = new Reply();
				reply.setReplyno(rs.getInt(idx++));
				reply.setContent(rs.getString(idx++));
				reply.setUserid(rs.getString(idx++));
				reply.setRegdate(rs.getString(idx++));
				reply.setBoardno(rs.getInt(idx++));
				reply.setUsername(rs.getString(idx++));
				
				result.add(reply);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}

	public Reply findBy(int replyno) {
		Reply result = null;
		Connection conn = DBconn.getConnection();
		String sql = "SELECT REPLYNO, CONTENT, USERID,\r\n" + 
				"CASE\r\n" + 
				"WHEN SYSDATE - REGDATE < 1 THEN TO_CHAR(REGDATE, 'HH24:MI:SS')\r\n" + 
				"ELSE TO_CHAR(REGDATE, 'YY/MM/DD')\r\n" + 
				"END REGDATE, BOARDNO,\r\n" + 
				"(SELECT NAME FROM MEMBER M WHERE M.USERID = R.USERID) USERNAME\r\n" + 
				"FROM REPLY R\r\n" + 
				"WHERE BOARDNO = ? AND REPLYNO > 0";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, replyno);

			ResultSet rs = pstmt.executeQuery();
			result = new Reply();
			while (rs.next()) {
				int idx = 1;
				result.setReplyno(rs.getInt(idx++));
				result.setContent(rs.getString(idx++));
				result.setUserid(rs.getString(idx++));
				result.setRegdate(rs.getString(idx++));
				result.setBoardno(rs.getInt(idx++));
				result.setUsername(rs.getString(idx++));
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
}

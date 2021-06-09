package member.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import member.controller.Remove;
import member.service.MemberService;
import member.service.MemberServiceImpl;
import member.vo.Member;
import util.DBconn;

public class MemberDao {
	
	public void join(Member member) {
		Connection connection =DBconn.getConnection();
		try {
			// 전처리 문장 선언
			String sql = "INSERT INTO MEMBER(USERID, PASSWORD, NAME, BIRTHDATE, NUM1, NUM2, NUM3,\r\n" + 
					"    EMAIL, SMS_CONSENT, EMAIL_CONSENT)\r\n" + 
					"VALUES(?, ?, ?, TO_DATE(?, 'YYYY-MM-DD'), ?, ?, ?,\r\n" + 
					"    ?, ?, ?)";
			// 전처리 문장 생성
			PreparedStatement pstmt = connection.prepareStatement(sql);
			
			int idx = 1;
			pstmt.setString(idx++, member.getUserId());
			pstmt.setString(idx++, member.getPassword());
			pstmt.setString(idx++, member.getName());
			pstmt.setString(idx++, member.getBirthDate());
			pstmt.setString(idx++, member.getNum1());
			pstmt.setString(idx++, member.getNum2());
			pstmt.setString(idx++, member.getNum3());
			pstmt.setString(idx++, member.getEmail());
			pstmt.setString(idx++, member.getSms_consent());
			pstmt.setString(idx++, member.getEmail_consent());
			
			// 실행 insert
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	// login만 함.
	public Member login(Member member) {
		Member result = null;
		Connection conn = DBconn.getConnection();
		String sql = "SELECT USERID, PASSWORD, NAME, TO_CHAR(BIRTHDATE, 'YYMMDD'), NUM1, NUM2, NUM3, EMAIL, SMS_CONSENT, EMAIL_CONSENT, TO_CHAR(REGDATE, 'YYMMDD')\r\n" + 
				"FROM MEMBER WHERE USERID=? AND PASSWORD=?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, member.getUserId());
			pstmt.setString(2, member.getPassword());
			
			ResultSet rs = pstmt.executeQuery();
			
			if(rs.next()) {
				int idx = 1;
				result = new Member(
					rs.getString(idx++),
					rs.getString(idx++),
					rs.getString(idx++),
					rs.getString(idx++),
					rs.getString(idx++),
					rs.getString(idx++),
					rs.getString(idx++),
					rs.getString(idx++),
					rs.getString(idx++),
					rs.getString(idx++),
					rs.getString(idx++)
				);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	public void modify(Member member) {
		Connection conn = DBconn.getConnection();
		try {
			String sql = "UPDATE MEMBER SET\r\n" + 
					"    NAME=?\r\n" + 
					"    ,PASSWORD=?\r\n" + 
					"    , BIRTHDATE=?\r\n" + 
					"    , NUM1=?\r\n" + 
					"    , NUM2=?\r\n" + 
					"    , NUM3=?\r\n" + 
					"    , EMAIL=?\r\n" + 
					"    , SMS_CONSENT=?\r\n" + 
					"    , EMAIL_CONSENT=?\r\n" + 
					"WHERE USERID=?";
			
			PreparedStatement pstmt = conn.prepareStatement(sql);
			
			int idx = 1;
			pstmt.setString(idx++, member.getName());
			pstmt.setString(idx++, member.getPassword());
			pstmt.setString(idx++, member.getBirthDate());
			pstmt.setString(idx++, member.getNum1());
			pstmt.setString(idx++, member.getNum2());
			pstmt.setString(idx++, member.getNum3());
			pstmt.setString(idx++, member.getEmail());
			pstmt.setString(idx++, member.getSms_consent());
			pstmt.setString(idx++, member.getEmail_consent());
			pstmt.setString(idx++, member.getUserId());
			
			pstmt.executeUpdate();
		}catch (SQLException e) {
			e.printStackTrace();
		}
	}
	public void remove(Member member) {
		Connection conn = DBconn.getConnection();
		
		try {
			String sql = "DELETE MEMBER WHERE USERID = ?";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			
			int idx = 1;
			pstmt.setString(idx++, member.getUserId());
			
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
//	public static void main(String[] args) {
//		MemberDao dao = new MemberDao();
//		Member member = new Member("test01", "1234", "테스트1", "birthDate", "010", "1111", "2222", "", "", "", null);
//		System.out.println("dao.login(member):: " + dao.login(member));
//		dao.remove(member);
//		System.out.println("dao.remove(member):: " + dao.remove(member));
//	}
}

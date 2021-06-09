package board.service;

import java.util.List;

import board.dao.ReplyDao;
import board.vo.Reply;

public class ReplyServiceImpl implements ReplyService{
	private ReplyDao replyDao = new ReplyDao();
	// (변화)
	// 댓글 작성
	public void write(Reply reply) {
		replyDao.write(reply);
	}
	// 댓글 수정
	public void modify(Reply reply) {
		replyDao.modify(reply);
	}
	// 댓글 삭제
	public void remove(int replyno) {
		replyDao.remove(replyno);
	} // 특정 댓글만 삭제
	
	// 댓글 목록
	public List<Reply> list(int boardno){ // 글번호를 통해 댓글 목록을 가져옴.
		return replyDao.list(boardno);
	}
	
	// 댓글 하나 조회
	public Reply findBy(int replyno) {
		// TODO Auto-generated method stub
		return replyDao.findBy(replyno);
	}
}

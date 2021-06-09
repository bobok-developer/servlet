package board.service;

import java.util.List;

import board.vo.Reply;

public interface ReplyService {
	// (변화)
	// 댓글 작성
	void write(Reply reply);
	// 댓글 수정
	void modify(Reply reply);
	// 댓글 삭제
	void remove(int replyno); // 특정 댓글만 삭제
	
	// 댓글 목록
	List<Reply> list(int boardno); // 글번호를 통해 댓글 목록을 가져옴.
	
	// 댓글 하나 조회
	Reply findBy(int replyno);
}

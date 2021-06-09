package member.service;

import java.util.List;

import member.vo.Member;

public interface MemberService {
	// 최소한 서비스는 인터페이스로 구현해야 함. > 이유는 다음에
	
	// 가입
	public abstract void join(Member member); // public abstract는 생략 가능
	// 로그인
	Member login(Member member);
	// 로그아웃
	void logout(Member member);
	// 정보수정
	void modify(Member member);
	// 탈퇴
	void remove(Member member);
	
	// id를 통한 회원찾기
	Member findBy(String userId);
}

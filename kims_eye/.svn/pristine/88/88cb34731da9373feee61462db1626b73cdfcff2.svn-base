package member.service;

import java.util.List;

import board.dao.BoardDao;
import lombok.Getter;
import member.dao.MemberDao;
import member.vo.Member;

@Getter
public class MemberServiceImpl implements MemberService {
	private MemberDao memberDao = new MemberDao();
	
	@Override
	public void join(Member member) {
		// TODO Auto-generated method stub
		memberDao.join(member);
	}

	@Override
	public Member login(Member member) {
		// TODO Auto-generated method stub
		return memberDao.login(member);
	}

	@Override
	public void logout(Member member) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Member findBy(String userId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void modify(Member member) {
		// TODO Auto-generated method stub
		memberDao.modify(member);
	}

	@Override
	public void remove(Member member) {
		memberDao.remove(member);
	}
	
	
	
}

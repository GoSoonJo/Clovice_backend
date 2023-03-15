package kr.board.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Update;

import kr.board.entity.Board;
import kr.board.entity.Favorite;
import kr.board.entity.Member;

@Mapper //- Mybatis API
public interface MemberMapper {
	public Member registerCheck(String mem_id);
	public int register(Member m); // 회원등록(성공=1,실패=0)
	public Member memLogin(Member mvo); // 로그인체크
	public int memUpdate(Member mvo);
	public int insertFeature(Favorite fvr);

	
	
}

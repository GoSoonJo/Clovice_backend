package kr.board.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Update;

import kr.board.entity.Board;
import kr.board.entity.Favorite;
import kr.board.entity.Log;
import kr.board.entity.Member;

@Mapper //- Mybatis API
public interface LogMapper {
	public int logCount(String mem_id);

	
	
}

package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.sql.DataSource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.stereotype.Repository;

import dao.mapper.BoardMapper;
import logic.Board;


@Repository
public class BoardDao {	
	@Autowired
	private SqlSessionTemplate sqlSession;
	private Map<String, Object> param = new HashMap<>();	
	public List<Board> noboardlist() {
		return sqlSession.getMapper(BoardMapper.class).noboardlist(null);
	}
	public List<Board> suboardlist(Integer pageNum, int limit) {
		param.clear();
		param.put("startrow", (pageNum - 1) * limit);
		param.put("limit", limit);
		return sqlSession.getMapper(BoardMapper.class).suboardlist(param);
	}
	public void noticewrite(String boardsubject, String boardcontent) {
		param.clear();		
		param.put("boardsubject",boardsubject);
		param.put("boardcontent",boardcontent);		
		sqlSession.getMapper(BoardMapper.class).noticewrite(param);		
	}
	public int suboardcount() {
		return sqlSession.getMapper(BoardMapper.class).suboardcount();
	}
	public Board boarddetail(Integer boardnum) {
		param.clear();
		param.put("boardnum", boardnum);
		return sqlSession.getMapper(BoardMapper.class).boarddetail(param);
	}
	public int reboardcount() {
		return sqlSession.getMapper(BoardMapper.class).reboardcount();
	}
	public List<Board> reboardlist(Integer pageNum, int limit) {
		param.clear();
		param.put("startrow", (pageNum - 1) * limit);
		param.put("limit", limit);
		return sqlSession.getMapper(BoardMapper.class).reboardlist(param);
	}	
}

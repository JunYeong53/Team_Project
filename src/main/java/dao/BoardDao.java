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
   public int reboardcount(int review) {
      param.clear();
      param.put("boardtype", review);
      return sqlSession.getMapper(BoardMapper.class).reboardcount(param);
   }
   public List<Board> reboardlist(Integer pageNum, int limit) {
      param.clear();
      param.put("startrow", (pageNum - 1) * limit);
      param.put("limit", limit);
      return sqlSession.getMapper(BoardMapper.class).reboardlist(param);
   }
   public List<Board> ajaxreboardlist(Integer pageNum, int limit, int review) {
      param.clear();
      param.put("startrow", (pageNum - 1) * limit);
      param.put("limit", limit);
      param.put("boardtype", review);
      return sqlSession.getMapper(BoardMapper.class).ajaxreboardlist(param);
   }
   public void suboardinsert(String boardid, String boardsubject, String boardcontent) {
      param.clear();
      param.put("id", boardid);
      param.put("boardsubject", boardsubject);
      param.put("boardcontent", boardcontent);
      sqlSession.getMapper(BoardMapper.class).suboardinsert(param);
      
   }
   public List<Board> mysuboardlist(String id) {
      param.clear();
      param.put("id",id);
      return sqlSession.getMapper(BoardMapper.class).mysuboardlist(param);
   }
   public void acceptup(Integer boardnum) {
      param.clear();
      param.put("boardnum", boardnum);
      sqlSession.getMapper(BoardMapper.class).acceptup(param);
      
   }
   public void reboardwrite(Board board) {
      sqlSession.getMapper(BoardMapper.class).reboardwrite(board);      
   }
public List<Board> review5() {
	return sqlSession.getMapper(BoardMapper.class).review5();
}
   
}
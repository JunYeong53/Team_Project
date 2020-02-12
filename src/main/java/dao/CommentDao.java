package dao;

import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dao.mapper.CommentMapper;
import logic.Comment;

@Repository
public class CommentDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	private Map<String, Object> param = new HashMap<>();

	public void write(Comment comment) {
		sqlSession.getMapper(CommentMapper.class).write(comment);
	}

	public Comment detail(Integer boardnum) {
		param.clear();
		param.put("boardnum", boardnum);
		return sqlSession.getMapper(CommentMapper.class).detail(param);
	}

	public boolean commentcheck(Integer boardnum) {
		int result = 0;
		result = sqlSession.getMapper(CommentMapper.class).check(boardnum);
		if (result > 0) {
			return true;
		} else {
			return false;
		}
	}
}
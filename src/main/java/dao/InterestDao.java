package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dao.mapper.InterestMapper;
import logic.Interest;

@Repository
public class InterestDao {
	@Autowired
	   private SqlSessionTemplate sqlSession;
	   private Map<String, Object> param = new HashMap<>();
	   
	public Interest selectinterest(String intname) {
		return sqlSession.getMapper(InterestMapper.class).selectinterest(intname);
	}

	// ===========================================
	public List<Interest> interestlist() {
		return sqlSession.getMapper(InterestMapper.class).interestlist();
	}   
}

package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dao.mapper.GoodMapper;
import logic.Good;
import logic.User;

@Repository
public class GoodDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	private Map<String, Object> param = new HashMap<>();
	
	public List<Good> gooduser(String id) {
		param.clear();
		param.put("id",id);
		return sqlSession.getMapper(GoodMapper.class).gooduser(param);
	}

	public User goodselect(List<Good> giveuser) {
		User user = null;
		for(Good g : giveuser) {
			param.clear();
			param.put("id",g.getId());
			user = sqlSession.getMapper(GoodMapper.class).goodselect(param);
		}
		return user;
	}
}

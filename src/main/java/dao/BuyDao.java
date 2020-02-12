package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dao.mapper.BuyMapper;
import logic.Buy;

@Repository
public class BuyDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	private Map<String, Object> param = new HashMap<>();
	
	public void addbuylist(Buy buy) {
		sqlSession.getMapper(BuyMapper.class).addbuylist(buy);
	}

	public List<Buy> selectbuylist(String id) {
		return sqlSession.getMapper(BuyMapper.class).selectbuylist(id);
	}

	public List<Buy> allbuylist() {
		return sqlSession.getMapper(BuyMapper.class).allbuylist();
	}
}

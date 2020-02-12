package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dao.mapper.CashMapper;
import logic.Cash;

@Repository
public class CashDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	private Map<String, Object> param = new HashMap<>();
	
	public List<Cash> cashlist1() {
		return sqlSession.getMapper(CashMapper.class).list1();
	}
	public List<Cash> cashlist2() {
		return sqlSession.getMapper(CashMapper.class).list2();
	}
}

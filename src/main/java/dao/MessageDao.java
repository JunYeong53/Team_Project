package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dao.mapper.MessageMapper;
import logic.Message;

@Repository
public class MessageDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	private Map<String, Object> param = new HashMap<>();
	
	public int maxnum() {
		return sqlSession.getMapper(MessageMapper.class).maxnum();
	}

	public void insertmsg(Message msg) {
		sqlSession.getMapper(MessageMapper.class).insertmsg(msg);
	}

	public List<Message> chatlist(Integer chatnum) {
		return sqlSession.getMapper(MessageMapper.class).chatlist(chatnum);
	}
}

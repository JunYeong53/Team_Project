package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dao.mapper.ChatroomMapper;
import logic.Chatroom;

@Repository
public class ChatroomDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	private Map<String, Object> param = new HashMap<>();
	
	public Chatroom selectchat(int chatnum) {
		param.clear();
		param.put("chatnum", chatnum);
		List<Chatroom> list = sqlSession.getMapper(ChatroomMapper.class).selectone(param);
		return list.get(0);
	}

	public List<Chatroom> roomlist(String id) {
		param.clear();
		param.put("id", id);
		List<Chatroom> list = sqlSession.getMapper(ChatroomMapper.class).roomlist(param);
		return list;
	}
	
	public void create(Chatroom cr) {
		sqlSession.getMapper(ChatroomMapper.class).create(cr);
	}

	// ============================================================
	public void deleteroom(int chatnum) {
		sqlSession.getMapper(ChatroomMapper.class).delete(chatnum);
	}

	public Chatroom selectchat2(String myid, String id) {
		param.clear();
		param.put("myid", myid);
		param.put("id", id);
		return sqlSession.getMapper(ChatroomMapper.class).selectone2(param);
	}
	
}

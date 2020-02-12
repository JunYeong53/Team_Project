package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.security.auth.login.LoginException;
import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.stereotype.Repository;

import dao.mapper.UserMapper;
import logic.User;

@Repository
public class UserDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	private Map<String, Object> param = new HashMap<>();

	public void join(User user) {
		sqlSession.getMapper(UserMapper.class).join(user);
	}

	public User userselectone(String id) {
		param.clear();
		param.put("id", id);
		List<User> list = sqlSession.getMapper(UserMapper.class).selectone(param);
		return list.get(0);
	}

	public List<User> userlist(String gender, int agehigh, int agelow) {
		param.clear();
		param.put("gender", gender);
		param.put("agehigh", agehigh);
		param.put("agelow", agelow);
		List<User> userlist = sqlSession.getMapper(UserMapper.class).userlist(param);
		return userlist;
	}

	public List<User> interestuserlist(String interestname, String gender) {
		param.clear();
		param.put("interestname", interestname);
		param.put("gender", gender);
		return sqlSession.getMapper(UserMapper.class).interestuserlist(param);
	}

	public void userupdate(User user) {
		sqlSession.getMapper(UserMapper.class).userupdate(user);
	}

	public List<User> history(String id) {
		param.clear();
		param.put("id", id);
		return sqlSession.getMapper(UserMapper.class).history(param);
	}

	public void historyinsert(String id, String userid) {
		param.clear();
		param.put("id", id);
		param.put("userid", userid);
		sqlSession.getMapper(UserMapper.class).historyinsert(param);
	}

	public void addgoodcnt(String id, Integer cnt, Integer price) {
		param.clear();
		param.put("id", id);
		param.put("cnt", cnt);
		param.put("price", price);
		sqlSession.getMapper(UserMapper.class).addgoodcnt(param);
	}

	public void userdelete(String id) {
		param.clear();
		param.put("id", id);
		sqlSession.getMapper(UserMapper.class).userdelete(param);

	}

	public void profileimgupdate(User user) {
		sqlSession.getMapper(UserMapper.class).profileimgupdate(user);
	}

	public int validid(String idcheck) {
		return sqlSession.getMapper(UserMapper.class).validid(idcheck);
	}

	public int validnick(String nickcheck) {
		return sqlSession.getMapper(UserMapper.class).validnick(nickcheck);
	}

	public void disgoodcnt(String myid) {
		sqlSession.getMapper(UserMapper.class).disgoodcnt(myid);
	}

	public void incgoodcnt(String myid) {
		sqlSession.getMapper(UserMapper.class).incgoodcnt(myid);
	}

	public List<User> adlist() {
		return sqlSession.getMapper(UserMapper.class).adlist();
	}

	public String useridsearch(String email) {
		return sqlSession.getMapper(UserMapper.class).useridsearch(email);
	}

	public String userpwsearch(String id, String email) {
		param.clear();
		param.put("id", id);
		param.put("email", email);
		return sqlSession.getMapper(UserMapper.class).userpwsearch(param);
	}

	public List<User> filteruserlist(String gender, String address, String ageh, String agel, String height,
			String body, String education, String pay) {
		param.clear();
		param.put("gender", gender);
		param.put("address", address);
		param.put("ageh", ageh);
		param.put("agel", agel);
		param.put("height", height);
		param.put("body", body);
		param.put("education", education);
		param.put("pay", pay);
		System.out.println(param);
		return sqlSession.getMapper(UserMapper.class).filteruserlist(param);
	}

	public void userPassword(String id, String chgpass) {
		param.clear();
		param.put("id", id);
		param.put("chgpass", chgpass);
		sqlSession.getMapper(UserMapper.class).updatePass(param);
	}
}

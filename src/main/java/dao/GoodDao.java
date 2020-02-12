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
   
   public List<User> gooduser(String id) {
      param.clear();
      param.put("id",id);
      return sqlSession.getMapper(GoodMapper.class).gooduser(param);
   }
   
   public List<User> receiveuser(String id) {
      param.clear();
      param.put("id", id);
      return sqlSession.getMapper(GoodMapper.class).receiveuser(param);
   }

   public int reqinsert(String myid, String id) {
      param.clear();
      param.put("id", myid);
      param.put("userid", id);
      return sqlSession.getMapper(GoodMapper.class).reqinsert(param);
   }

   public String goodcheck(String myid, String id) {
      param.clear();
      param.put("id", myid);
      param.put("userid", id);
      return sqlSession.getMapper(GoodMapper.class).goodcheck(param);
   }
   
   public String goodcheck2(String myid, String id) {
      param.clear();
      param.put("id", myid);
      param.put("userid", id);
      return sqlSession.getMapper(GoodMapper.class).goodcheck2(param);
   }

   public int reqdelete(String myid, String id) {
      param.clear();
      param.put("id", myid);
      param.put("userid", id);
      return sqlSession.getMapper(GoodMapper.class).reqdelete(param);
   }
   
   public int reqdelete2(String myid, String id) {
      param.clear();
      param.put("id", myid);
      param.put("userid", id);
      return sqlSession.getMapper(GoodMapper.class).reqdelete2(param);
   }

   public String giveuserone(String id, String userid) {
      param.clear();
      param.put("id", id);
      param.put("userid", userid);
      return sqlSession.getMapper(GoodMapper.class).giveuserone(param);
   }

   public void goodinsert(String myid, String id) {
      param.clear();
      param.put("id", myid);
      param.put("userid", id);
      sqlSession.getMapper(GoodMapper.class).goodinsert(param);
   }

   public void gooddelete(String myid, String id) {
      param.clear();
      param.put("id", myid);
      param.put("userid", id);
      sqlSession.getMapper(GoodMapper.class).gooddelete(param);
   }
   public String givecheck3(String id, String userid) {
	      param.clear();
	      param.put("id", id);
	      param.put("userid", userid);
	      return sqlSession.getMapper(GoodMapper.class).goodcheck3(param);
	   }

}
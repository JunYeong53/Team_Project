package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dao.mapper.PromiseMapper;
import logic.Promise;
@Repository
public class PromiseDao {
    @Autowired
    private SqlSessionTemplate sqlSession;
    private Map<String, Object> param = new HashMap<>();
    
   public void insert(Promise promise) {      
      sqlSession.getMapper(PromiseMapper.class).insert(promise);
   }

   public boolean select(String id, String goodid) {
      param.clear();
      param.put("id", id);
      param.put("goodid", goodid);
      int result = 0;
      result = sqlSession.getMapper(PromiseMapper.class).select(param);
      if(result > 0) {
         return true;
      }
      else {
         return false;
      }      
   }

   public List<Promise> list(String id) {
      param.clear();
      param.put("goodid", id);
      return sqlSession.getMapper(PromiseMapper.class).list(param);
   }

   public Promise detail(Integer promisenum) {
      param.clear();
      param.put("promisenum", promisenum);
      return sqlSession.getMapper(PromiseMapper.class).detail(param);
   }

   public void accept(String goodid, String id) {
      param.clear();
      param.put("id", id);
      param.put("goodid", goodid);
      sqlSession.getMapper(PromiseMapper.class).accept(param);
      
   }

   public void delete(String goodid, String id) {
      param.clear();
      param.put("id", id);
      param.put("goodid", goodid);
      sqlSession.getMapper(PromiseMapper.class).delete(param);
   }

   public List<Promise> mypromiselist(String id) {
      param.clear();
      param.put("id", id);
      return sqlSession.getMapper(PromiseMapper.class).mypromiselist(param);
   }

   
}
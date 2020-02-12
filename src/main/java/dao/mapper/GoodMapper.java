package dao.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import logic.Good;
import logic.User;

public interface GoodMapper {
   
   @Select("select u.id, u.profileurl1, u.nickname, u.age from req g, user u where u.id = g.goodid and g.id = #{id}")
   List<User> gooduser(Map<String, Object> param);
   
   @Select("select u.id, u.profileurl1, u.nickname, u.age, u.address, u.greeting, u.height, u.body, u.interestname1, u.interestname2, u.interestname3, u.interestname4, u.interestname5, u.interestname6 from req r, user u where u.id = r.id and r.goodid = #{id}")
   List<User> receiveuser(Map<String, Object> param);

   @Insert("insert into req(id, goodid) values (#{id}, #{userid})")
   int reqinsert(Map<String, Object> param);

   @Select("select id from req where id = #{id} and goodid = #{userid}") // 내가 상대한테 좋아요 했는지 체크
   String goodcheck(Map<String, Object> param);
   
   @Select("select id from req where id = #{userid} and goodid = #{id}") // 상대가 나한테 좋아요 했는지 체크
   String goodcheck2(Map<String, Object> param);
   
   @Delete("delete from req where id = #{userid} and goodid = #{id}")
   int reqdelete(Map<String, Object> param);

   @Delete("delete from req where id = #{id} and goodid = #{userid}")
   int reqdelete2(Map<String, Object> param);
   
   @Select("select goodid from req where id = #{id} and goodid = #{userid}")
   String giveuserone(Map<String, Object> param);

   @Insert("insert into good(id, goodid) values (#{id}, #{userid})")
   void goodinsert(Map<String, Object> param);
   
   @Delete("delete from good where id = #{id} and goodid = #{userid}")
   void gooddelete(Map<String, Object> param);
   
   @Select("select goodid from good where id = #{id} and goodid = #{userid}") // 매칭완료된 상대일 경우
   String goodcheck3(Map<String, Object> param);
   
}
package dao.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import logic.Promise;

public interface PromiseMapper {

   @Insert("insert into promise (id,goodid,promisesubject,promisecontent,promiseday,lat,lon,accept, keyword) values(#{id},#{goodid},#{promisesubject},#{promisecontent},#{promiseday},#{lat},#{lon},0,#{keyword})")
   void insert(Promise promise);

   @Select("select count(*) from promise where id=#{id} and goodid=#{goodid}")
   int select(Map<String, Object> param);

   @Select("select * from promise where goodid=#{goodid}")
   List<Promise> list(Map<String, Object> param);

   @Select("select * from promise where promisenum=#{promisenum}")
   Promise detail(Map<String, Object> param);

   @Update("update promise set accept=1 where id=#{id} and goodid=#{goodid}")
   void accept(Map<String, Object> param);

   @Delete("delete from promise where id=#{id} and goodid=#{goodid}")
   void delete(Map<String, Object> param);

   @Select("select * from promise where id=#{id}")
   List<Promise> mypromiselist(Map<String, Object> param);

   
}
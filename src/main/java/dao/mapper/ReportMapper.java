package dao.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import logic.Report;

public interface ReportMapper {

   @Insert("insert into report (reportid,id,reportcontent,reporttime,reportprocess) values(#{reportid},#{id},#{reportcontent},now(),0)")
   void submit(Report report);

   @Select("select count(*) from report where reportid=#{reportid} and id=#{id}")
   int select(Map<String, Object> param);
   
   @Insert("insert into report (reportid, id, reportcolumn, reportcontent, reporttime) values(#{reportid},#{id},#{reportcolumn},#{reportcontent}, now())")
   void insertreport(Map<String, Object> param);

   @Delete("delete from report where reportid=#{reportid} and id=#{id}")
   void reportdelete(Map<String, Object> param);
   
   @Select("select * from report")
   List<Report> reportlist();
}
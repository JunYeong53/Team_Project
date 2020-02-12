package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dao.mapper.ReportMapper;
import logic.Report;

@Repository
public class ReportDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	private Map<String, Object> param = new HashMap<>();

	public void submit(Report report) {
		sqlSession.getMapper(ReportMapper.class).submit(report);
	}

	public boolean select(String id, String reportid) {
		param.clear();
		param.put("id", id);
		param.put("reportid", reportid);
		int result = 0;
		result = sqlSession.getMapper(ReportMapper.class).select(param);
		if (result > 0) {
			return true;
		} else {
			return false;
		}
	}

	public void insertreport(String reportid, String id, String reportcolumn, String reportcontent) {
		param.clear();
		param.put("reportid", reportid);
		param.put("id", id);
		param.put("reportcolumn", reportcolumn);
		param.put("reportcontent", reportcontent);
		sqlSession.getMapper(ReportMapper.class).insertreport(param);

	}

	public void reportdelete(String reportid, String id) {
		param.clear();
		param.put("reportid", reportid);
		param.put("id", id);
		sqlSession.getMapper(ReportMapper.class).reportdelete(param);

	}
	
	public List<Report> reportlist() {      
	      return sqlSession.getMapper(ReportMapper.class).reportlist();
	   }
}
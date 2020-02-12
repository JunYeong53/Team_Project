package dao.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import logic.Interest;

public interface InterestMapper {

	@Select("select * from interest where interestname = #{intname}")
	Interest selectinterest(String intname);

	// ==============================================
	@Select("select * from interest")
	List<Interest> interestlist();

}

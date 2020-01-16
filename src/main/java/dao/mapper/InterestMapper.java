package dao.mapper;

import org.apache.ibatis.annotations.Select;

import logic.Interest;

public interface InterestMapper {

	@Select("select * from interest")
	Interest interest();

}

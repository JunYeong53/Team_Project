package dao.mapper;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import logic.User;

public interface UserMapper {

	@Select("select * from user")
	User select();

	@Select("select count(*) from user where interestname1 IS NOT null")
	int interestcount();
}

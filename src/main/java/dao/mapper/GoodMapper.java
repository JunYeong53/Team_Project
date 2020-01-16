package dao.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Select;

import logic.Good;
import logic.User;

public interface GoodMapper {

	@Select("select goodid from good where id = ${id}")
	List<Good> gooduser(Map<String, Object> param);

	@Select("select * from user where id = ${id}")
	User goodselect(Map<String, Object> param);

}

package dao.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import logic.User;

public interface UserMapper {

	@Insert("insert into user(id, password, gender, phone, birthday, address, nickname, profileurl1, height, body, education, pay, agehigh, agelow) values (#{id}, #{password}, #{gender}, #{phone}, #{birthday}, #{address}, #{nickname}, #{profileurl1}, #{height}, #{body}, #{education}, #{pay}, #{agehigh}, #{agelow})")
	void join(User user);

}

package dao.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import logic.User;

public interface UserMapper {

	@Insert("insert into user(id, password, gender, phone, birthday, address, nickname, profileurl1, height, body, education, pay, agehigh, agelow, age, goodcnt, greeting) values (#{id}, #{password}, #{gender}, #{phone}, #{birthday}, #{address}, #{nickname}, #{profileurl1}, #{height}, #{body}, #{education}, #{pay}, #{agehigh}, #{agelow}, #{age}, 30, 'æ»≥Á«œººø‰')")
	void join(User user);

	@Select("select * from user where id = #{id}")
	List<User> selectone(Map<String, Object> param);

	@Select("select * from user where gender != #{gender} and age between #{agelow} and #{agehigh}")
	List<User> userlist(Map<String, Object> param);

	@Select("SELECT * FROM user WHERE gender != #{gender} and id in (select id from user where interestname1 = #{interestname} or interestname2 = #{interestname} or interestname3 = #{interestname} or interestname4 = #{interestname} or interestname5 = #{interestname} or interestname6 = #{interestname})")
	List<User> interestuserlist(Map<String, Object> param);

	@Update("update user set phone = #{phone}, address = #{address}, body = #{body}, education = #{education}, pay = #{pay}, interestname1 = #{interestname1}, interestname2 = #{interestname2}, interestname3 = #{interestname3}, interestname4 = #{interestname4}, interestname5 = #{interestname5}, interestname6 = #{interestname6}, greeting = #{greeting} where id = #{id}")
	void userupdate(User user);

	@Select("select * from user u, history h where h.historyid = #{id} and u.id = h.id")
	List<User> history(Map<String, Object> param);

	@Insert("insert into history(id, historyid) values (#{id}, #{userid})")
	void historyinsert(Map<String, Object> param);

	@Update("update user set goodcnt = goodcnt + #{cnt} where id = #{id}")
	void addgoodcnt(Map<String, Object> param);

	@Delete("delete from user where id=#{id}")
	void userdelete(Map<String, Object> param);

	@Update("update user set profileurl1 = #{profileurl1}, profileurl2 = #{profileurl2}, profileurl3 = #{profileurl3} where id = #{id}")
	void profileimgupdate(User user);

	@Select("SELECT COUNT(id) FROM user WHERE id = #{idcheck}")
	int validid(String idcheck);

	@Select("SELECT COUNT(nickname) FROM user WHERE nickname = #{nickcheck}")
	int validnick(String nickcheck);

	@Update("update user set goodcnt = goodcnt - 1 where id = #{myid}")
	void disgoodcnt(String myid);

	@Update("update user set goodcnt = goodcnt + 1 where id = #{myid}")
	void incgoodcnt(String myid);

	@Select("select * from user ORDER BY gender='M'")
	List<User> adlist();

	@Select("select id from user where email=#{email}")
	String useridsearch(String email);

	@Select("select password from user where id=#{id} and email=#{email}")
	String userpwsearch(Map<String, Object> param);

	@Select({ "<script> ", "select * from user ", "where gender != #{gender} ",
			"<if test = 'address != null'> and address = #{address} </if>",
			"<if test = 'ageh != null and agel != null'> and age between #{agel} and #{ageh} </if>",
			"<if test = 'height != null'> and height = #{height} </if>",
			"<if test = 'body != null'> and body = #{body} </if>",
			"<if test = 'education != null'> and education = #{education} </if>",
			"<if test = 'pay != null'> and pay = #{pay} </if>", "</script>" })
	List<User> filteruserlist(Map<String, Object> param);

	@Update("update user set password=#{chgpass} where id=#{id}")
	void updatePass(Map<String, Object> param);
}

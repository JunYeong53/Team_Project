package dao.mapper;

import java.util.Map;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import logic.Comment;

public interface CommentMapper {

	@Insert("insert into comment (boardnum,commenttext,commentday) values(#{boardnum},#{commenttext},#{commentday})")
	void write(Comment comment);

	@Select("select * from comment where boardnum=#{boardnum}")
	Comment detail(Map<String, Object> param);

	@Select("select count(*) from comment where boardnum=#{boardnum}")
	int check(Integer boardnum);
}
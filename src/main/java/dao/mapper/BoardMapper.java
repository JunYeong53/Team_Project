package dao.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import logic.Board;

public interface BoardMapper {
	@Select("select * from board where boardtype = 1")
	List<Board> noboardlist(Object object);
	
	@Select("select * from board where boardtype = 2 limit #{startrow}, #{limit}")
	List<Board> suboardlist(Map<String, Object> param);

	@Insert("insert into board (id,boardsubject, boardcontent,boarduptime, boardtype) values('admin',#{boardsubject},#{boardcontent},now(),1)")
	void noticewrite(Map<String, Object> param);

	@Select("select count(*) from board where boardtype = 2")
	int suboardcount();

	@Select("select * from board where boardnum=#{boardnum}")
	Board boarddetail(Map<String, Object> param);
	
	@Select("select count(*) from board where boardtype = 3")
	int reboardcount();

	@Select("select * from board where boardtype = 3 limit #{startrow}, #{limit}")
	List<Board> reboardlist(Map<String, Object> param);
	
}

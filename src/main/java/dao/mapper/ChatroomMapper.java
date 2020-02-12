package dao.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import logic.Chatroom;

public interface ChatroomMapper {

	@Select("select * from chatroom where chatnum = #{chatnum}")
	List<Chatroom> selectone(Map<String, Object> param);

	@Select("select * from chatroom where id = #{id} or goodid = #{id}")
	List<Chatroom> roomlist(Map<String, Object> param);

	@Insert("insert into chatroom (id, goodid) values (#{id}, #{goodid})")
	void create(Chatroom cr);

	// ============================================================
	@Delete("delete from chatroom where chatnum = #{chatnum}")
	void delete(int chatnum);

	@Select("select * from chatroom where id = #{myid} and goodid = #{id}")
	Chatroom selectone2(Map<String, Object> param);

}

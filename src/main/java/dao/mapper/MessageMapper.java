package dao.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import logic.Message;

public interface MessageMapper {

	@Select("select ifnull(max(messagenum), 0) from message")
	int maxnum();

	@Insert("insert into message (messagenum, chatnum, messagesender, messagecontent, messageday) values (#{messagenum}, #{chatnum}, #{messagesender}, #{messagecontent}, now())")
	void insertmsg(Message msg);

	@Select("select * from message where chatnum = #{chatnum}")
	List<Message> chatlist(Integer chatnum);
}

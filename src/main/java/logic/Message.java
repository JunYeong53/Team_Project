package logic;

import java.util.Date;

public class Message {
	private int messagenum;
	private int chatnum;
	private String messagesender;
	private String messagecontent;
	private Date messageday;
	private User user;
	public int getMessagenum() {
		return messagenum;
	}
	public void setMessagenum(int messagenum) {
		this.messagenum = messagenum;
	}
	public int getChatnum() {
		return chatnum;
	}
	public void setChatnum(int chatnum) {
		this.chatnum = chatnum;
	}
	public String getMessagesender() {
		return messagesender;
	}
	public void setMessagesender(String messagesender) {
		this.messagesender = messagesender;
	}
	public String getMessagecontent() {
		return messagecontent;
	}
	public void setMessagecontent(String messagecontent) {
		this.messagecontent = messagecontent;
	}
	public Date getMessageday() {
		return messageday;
	}
	public void setMessageday(Date messageday) {
		this.messageday = messageday;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	@Override
	public String toString() {
		return "Message [messagenum=" + messagenum + ", chatnum=" + chatnum + ", messagesender=" + messagesender
				+ ", messagecontent=" + messagecontent + ", messageday=" + messageday + ", user=" + user + "]";
	}
}

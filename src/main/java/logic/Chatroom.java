package logic;

public class Chatroom {
	private int chatnum;
	private String id;
	private String goodid;
	private User user;
	
	public int getChatnum() {
		return chatnum;
	}
	public void setChatnum(int chatnum) {
		this.chatnum = chatnum;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getGoodid() {
		return goodid;
	}
	public void setGoodid(String goodid) {
		this.goodid = goodid;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	@Override
	public String toString() {
		return "Chatroom [chatnum=" + chatnum + ", id=" + id + ", goodid=" + goodid + ", user=" + user + "]";
	}
}

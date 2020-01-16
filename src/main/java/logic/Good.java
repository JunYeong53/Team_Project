package logic;

public class Good {
	private String id;
	private String goodid;
	
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
	
	@Override
	public String toString() {
		return "Good [id=" + id + ", goodid=" + goodid + "]";
	}
	
}

package logic;

import java.util.Date;

public class Buy {
	private int buynum;
	private String id;
	private int buycnt;
	private int buyprice;
	private Date buyday;
	
	public int getBuynum() {
		return buynum;
	}
	public void setBuynum(int buynum) {
		this.buynum = buynum;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getBuycnt() {
		return buycnt;
	}
	public void setBuycnt(int buycnt) {
		this.buycnt = buycnt;
	}
	public int getBuyprice() {
		return buyprice;
	}
	public void setBuyprice(int buyprice) {
		this.buyprice = buyprice;
	}
	public Date getBuyday() {
		return buyday;
	}
	public void setBuyday(Date buyday) {
		this.buyday = buyday;
	}
	
	@Override
	public String toString() {
		return "Buy [buynum=" + buynum + ", id=" + id + ", buycnt=" + buycnt + ", buyprice=" + buyprice + ", buyday="
				+ buyday + "]";
	}
}

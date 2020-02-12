package logic;

public class Cash {
	private int cashcnt;
	private int cashprice;
	
	public int getCashcnt() {
		return cashcnt;
	}
	public void setCashcnt(int cashcnt) {
		this.cashcnt = cashcnt;
	}
	public int getCashprice() {
		return cashprice;
	}
	public void setCashprice(int cashprice) {
		this.cashprice = cashprice;
	}
	
	@Override
	public String toString() {
		return "Cash [cashcnt=" + cashcnt + ", cashprice=" + cashprice + "]";
	}
}

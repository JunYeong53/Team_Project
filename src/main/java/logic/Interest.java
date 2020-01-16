package logic;

public class Interest {
	private String interestname;
	private String interestpicurl;
	public String getInterestname() {
		return interestname;
	}
	public void setInterestname(String interestname) {
		this.interestname = interestname;
	}
	public String getInterestpicurl() {
		return interestpicurl;
	}
	public void setInterestpicurl(String interestpicurl) {
		this.interestpicurl = interestpicurl;
	}
	
	@Override
	public String toString() {
		return "Interest [interestname=" + interestname + ", interestpicurl=" + interestpicurl + "]";
	}
	
}

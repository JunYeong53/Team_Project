package exception;

public class UserException extends RuntimeException{
	private String url;
	
	public UserException(String msg, String url) {
	      super(msg);
	      this.url = url;
	   }
	   public String getUrl() {
	      return url;
	   }
}

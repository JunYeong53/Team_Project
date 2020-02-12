package exception;

public class ChatException extends RuntimeException{
	private String url;

	public ChatException(String msg, String url) {
	      super(msg);
	      this.url = url;
	   }

	public String getUrl() {
		return url;
	}
}

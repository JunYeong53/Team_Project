package logic;

import org.springframework.web.multipart.MultipartFile;

public class Picture {
	private String pictureurl;
	private MultipartFile file1;
	private String picturerealurl;
	public String getPictureurl() {
		return pictureurl;
	}
	public void setPictureurl(String pictureurl) {
		this.pictureurl = pictureurl;
	}
	public String getPicturerealurl() {
		return picturerealurl;
	}
	public void setPicturerealurl(String picturerealurl) {
		this.picturerealurl = picturerealurl;
	}
	public MultipartFile getFile1() {
		return file1;
	}
	public void setFile1(MultipartFile file1) {
		this.file1 = file1;
	}
	@Override
	public String toString() {
		return "Picture [pictureurl=" + pictureurl + ", file1=" + file1 + ", picturerealurl=" + picturerealurl + "]";
	}
	
	
	
}

package logic;

import org.springframework.web.multipart.MultipartFile;

public class Picture {
   private String pictureurl;
   private String pictureurl2;
   private String pictureurl3;
   private MultipartFile file1;
   private MultipartFile file2; 
   private MultipartFile file3;
   private String picturerealurl;
   private String picturerealurl2;
   private String picturerealurl3;
   
   public String getPictureurl() {
      return pictureurl;
   } 
   public String getPictureurl2() {
      return pictureurl2;
   }
   public String getPictureurl3() {
      return pictureurl3;
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
    
   public void setPictureurl2(String pictureurl2) {
      this.pictureurl2 = pictureurl2;
   }
   public String getPicturerealurl2() {
      return picturerealurl2;
   }
   public void setPicturerealurl2(String picturerealurl2) {
      this.picturerealurl2 = picturerealurl2;
   }
   
   public void setPictureurl3(String pictureurl3) {
      this.pictureurl3 = pictureurl3;
   }
   public String getPicturerealurl3() {
      return picturerealurl3;
   } 
   public void setPicturerealurl3(String picturerealurl3) {
      this.picturerealurl3 = picturerealurl3;
   }
   public MultipartFile getFile1() {
      return file1;
   } 
   public void setFile1(MultipartFile file1) {
      this.file1 = file1;
   }
   public MultipartFile getFile2() {
      return file2;
   } 
   public void setFile2(MultipartFile file2) {
      this.file2 = file2;
   }
   public MultipartFile getFile3() {
      return file3;
   } 
   public void setFile3(MultipartFile file3) {
      this.file3 = file3;
   }
   
@Override
public String toString() {
   return "Picture [pictureurl=" + pictureurl + ", pictureurl2=" + pictureurl2 + ", pictureurl3=" + pictureurl3
         + ", file1=" + file1 + ", file2=" + file2 + ", file3=" + file3 + ", picturerealurl=" + picturerealurl
         + ", picturerealurl2=" + picturerealurl2 + ", picturerealurl3=" + picturerealurl3 + "]";
} 
   

   
      
  
}
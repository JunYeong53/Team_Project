package logic;

import java.util.Date;

import javax.validation.constraints.Past;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.multipart.MultipartFile;

public class User {
   private String id;
   private String password;
   private String gender;
   private String phone;
   @DateTimeFormat(pattern = "yyyy-MM-dd")
   private Date birthday;
   private String address;
   private String nickname;
   private String profileurl1;
   private String profileurl2;
   private String profileurl3;
   private String profileurl4;
   private int height;
   private String body;
   private String education;
   private String pay;
   private String greeting;
   private String agehigh;
   private String agelow;
   private int age;
   private String interestname1;
   private String interestname2;
   private String interestname3;
   private String interestname4;
   private String interestname5;
   private String interestname6;
   private MultipartFile profile;
   private int goodcnt;
   private String email;
public String getId() {
   return id;
}
public void setId(String id) {
   this.id = id;
}
public String getPassword() {
   return password;
}
public void setPassword(String password) {
   this.password = password;
}
public String getGender() {
   return gender;
}
public void setGender(String gender) {
   this.gender = gender;
}
public String getPhone() {
   return phone;
}
public void setPhone(String phone) {
   this.phone = phone;
}
public Date getBirthday() {
   return birthday;
}
public void setBirthday(Date birthday) {
   this.birthday = birthday;
}
public String getAddress() {
   return address;
}
public void setAddress(String address) {
   this.address = address;
}
public String getNickname() {
   return nickname;
}
public void setNickname(String nickname) {
   this.nickname = nickname;
}
public String getProfileurl1() {
   return profileurl1;
}
public void setProfileurl1(String profileurl1) {
   this.profileurl1 = profileurl1;
}
public String getProfileurl2() {
   return profileurl2;
}
public void setProfileurl2(String profileurl2) {
   this.profileurl2 = profileurl2;
}
public String getProfileurl3() {
   return profileurl3;
}
public void setProfileurl3(String profileurl3) {
   this.profileurl3 = profileurl3;
}
public String getProfileurl4() {
   return profileurl4;
}
public void setProfileurl4(String profileurl4) {
   this.profileurl4 = profileurl4;
}
public int getHeight() {
   return height;
}
public void setHeight(int height) {
   this.height = height;
}
public String getBody() {
   return body;
}
public void setBody(String body) {
   this.body = body;
}
public String getEducation() {
   return education;
}
public void setEducation(String education) {
   this.education = education;
}
public String getPay() {
   return pay;
}
public void setPay(String pay) {
   this.pay = pay;
}
public String getGreeting() {
   return greeting;
}
public void setGreeting(String greeting) {
   this.greeting = greeting;
}
public String getAgehigh() {
   return agehigh;
}
public void setAgehigh(String agehigh) {
   this.agehigh = agehigh;
}
public String getAgelow() {
   return agelow;
}
public void setAgelow(String agelow) {
   this.agelow = agelow;
}
public int getAge() {
   return age;
}
public void setAge(int age) {
   this.age = age;
}
public String getInterestname1() {
   return interestname1;
}
public void setInterestname1(String interestname1) {
   this.interestname1 = interestname1;
}
public String getInterestname2() {
   return interestname2;
}
public void setInterestname2(String interestname2) {
   this.interestname2 = interestname2;
}
public String getInterestname3() {
   return interestname3;
}
public void setInterestname3(String interestname3) {
   this.interestname3 = interestname3;
}
public String getInterestname4() {
   return interestname4;
}
public void setInterestname4(String interestname4) {
   this.interestname4 = interestname4;
}
public String getInterestname5() {
   return interestname5;
}
public void setInterestname5(String interestname5) {
   this.interestname5 = interestname5;
}
public String getInterestname6() {
   return interestname6;
}
public void setInterestname6(String interestname6) {
   this.interestname6 = interestname6;
}
public MultipartFile getProfile() {
   return profile;
}
public void setProfile(MultipartFile profile) {
   this.profile = profile;
}
public int getGoodcnt() {
   return goodcnt;
}
public void setGoodcnt(int goodcnt) {
   this.goodcnt = goodcnt;
}
public String getEmail() {
   return email;
}
public void setEmail(String email) {
   this.email = email;
}
@Override
public String toString() {
   return "User [id=" + id + ", password=" + password + ", gender=" + gender + ", phone=" + phone + ", birthday="
         + birthday + ", address=" + address + ", nickname=" + nickname + ", profileurl1=" + profileurl1
         + ", profileurl2=" + profileurl2 + ", profileurl3=" + profileurl3 + ", profileurl4=" + profileurl4
         + ", height=" + height + ", body=" + body + ", education=" + education + ", pay=" + pay + ", greeting="
         + greeting + ", agehigh=" + agehigh + ", agelow=" + agelow + ", age=" + age + ", interestname1="
         + interestname1 + ", interestname2=" + interestname2 + ", interestname3=" + interestname3
         + ", interestname4=" + interestname4 + ", interestname5=" + interestname5 + ", interestname6="
         + interestname6 + ", profile=" + profile + ", goodcnt=" + goodcnt + ", email=" + email + "]";
}
   

   
}
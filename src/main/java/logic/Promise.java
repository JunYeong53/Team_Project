package logic;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Promise {
   private int promisenum;
   private String id;
   private String goodid;
   private String promisesubject;
   private String promisecontent;
   @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm")
   private Date promiseday;
   private double lat;
   private double lon;
   private int accept;
   private String keyword;
   public int getPromisenum() {
      return promisenum;
   }
   public void setPromisenum(int promisenum) {
      this.promisenum = promisenum;
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
   public String getPromisesubject() {
      return promisesubject;
   }
   public void setPromisesubject(String promisesubject) {
      this.promisesubject = promisesubject;
   }
   public String getPromisecontent() {
      return promisecontent;
   }
   public void setPromisecontent(String promisecontent) {
      this.promisecontent = promisecontent;
   }
   public Date getPromiseday() {
      return promiseday;
   }
   public void setPromiseday(Date promiseday) {
      this.promiseday = promiseday;
   }
   public double getLat() {
      return lat;
   }
   public void setLat(double lat) {
      this.lat = lat;
   }
   public double getLon() {
      return lon;
   }
   public void setLon(double lon) {
      this.lon = lon;
   }
   public int getAccept() {
      return accept;
   }
   public void setAccept(int accept) {
      this.accept = accept;
   }
   public String getKeyword() {
      return keyword;
   }
   public void setKeyword(String keyword) {
      this.keyword = keyword;
   }
   @Override
   public String toString() {
      return "Promise [promisenum=" + promisenum + ", id=" + id + ", goodid=" + goodid + ", promisesubject="
            + promisesubject + ", promisecontent=" + promisecontent + ", promiseday=" + promiseday + ", lat=" + lat
            + ", lon=" + lon + ", accept=" + accept + ", keyword=" + keyword + "]";
   }
   
   
}
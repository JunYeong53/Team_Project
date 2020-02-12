package logic;

import java.util.Date;

public class Report {
   private int reportnum;
   private String reportid;
   private String id;
   private String reportcolumn;
   private String reportcontent;
   private Date reporttime;   
   public int getReportnum() {
      return reportnum;
   }
   public void setReportnum(int reportnum) {
      this.reportnum = reportnum;
   }
   public String getReportid() {
      return reportid;
   }
   public void setReportid(String reportid) {
      this.reportid = reportid;
   }
   public String getId() {
      return id;
   }
   public void setId(String id) {
      this.id = id;
   }
   public String getReportcolumn() {
      return reportcolumn;
   }
   public void setReportcolumn(String reportcolumn) {
      this.reportcolumn = reportcolumn;
   }
   public String getReportcontent() {
      return reportcontent;
   }
   public void setReportcontent(String reportcontent) {
      this.reportcontent = reportcontent;
   }
   public Date getReporttime() {
      return reporttime;
   }
   public void setReporttime(Date reporttime) {
      this.reporttime = reporttime;
   }
   @Override
   public String toString() {
      return "Report [reportnum=" + reportnum + ", reportid=" + reportid + ", id=" + id + ", reportcolumn="
            + reportcolumn + ", reportcontent=" + reportcontent + ", reporttime=" + reporttime + "]";
   }
   
   
   
}
package logic;

import java.util.Date;

public class Comment {
   private int boardnum;
   private String commenttext;
   private Date commentday;
   public int getBoardnum() {
      return boardnum;
   }
   public void setBoardnum(int boardnum) {
      this.boardnum = boardnum;
   }
   public String getCommenttext() {
      return commenttext;
   }
   public void setCommenttext(String commenttext) {
      this.commenttext = commenttext;
   }
   public Date getCommentday() {
      return commentday;
   }
   public void setCommentday(Date commentday) {
      this.commentday = commentday;
   }
   @Override
   public String toString() {
      return "Comment [boardnum=" + boardnum + ", commenttext=" + commenttext + ", commentday=" + commentday + "]";
   }
   
}
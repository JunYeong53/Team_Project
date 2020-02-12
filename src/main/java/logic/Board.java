package logic;

import java.util.Date;

public class Board {
   private int boardnum;
   private String id;
   private String boardsubject;
   private String boardcontent;
   private Date boarduptime;
   private int boardtype;
   private int accept;
   
   private User user;
   
public int getBoardnum() {
   return boardnum;
}
public void setBoardnum(int boardnum) {
   this.boardnum = boardnum;
}
public String getId() { 
   return id;
}
public void setId(String id) {
   this.id = id;
}
public String getBoardsubject() {
   return boardsubject;
}
public void setBoardsubject(String boardsubject) {
   this.boardsubject = boardsubject;
}
public String getBoardcontent() {
   return boardcontent;
}
public void setBoardcontent(String boardcontent) {
   this.boardcontent = boardcontent;
}
public Date getBoarduptime() {
   return boarduptime;
}
public void setBoarduptime(Date boarduptime) {
   this.boarduptime = boarduptime;
}
public int getBoardtype() {
   return boardtype;
}
public void setBoardtype(int boardtype) {
   this.boardtype = boardtype;
}
public int getAccept() {
   return accept;
}
public void setAccept(int accept) {
   this.accept = accept;
}
public User getUser() {
   return user;
}
public void setUser(User user) {
   this.user = user;
}
@Override
public String toString() {
   return "Board [boardnum=" + boardnum + ", id=" + id + ", boardsubject=" + boardsubject + ", boardcontent="
         + boardcontent + ", boarduptime=" + boarduptime + ", boardtype=" + boardtype + ", accept=" + accept
         + ", user=" + user + "]";
}

   
}
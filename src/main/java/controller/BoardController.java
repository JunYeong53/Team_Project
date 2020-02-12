package controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import exception.BoardException;
import logic.Board;
import logic.Comment;
import logic.Promise;
import logic.Report;
import logic.ShopService;
import logic.User;

@Controller
@RequestMapping("board")
public class BoardController {
   
   @Autowired
   private ShopService service;
   
   @RequestMapping("notice")
   public ModelAndView notice(HttpSession session) {
      ModelAndView mav = new ModelAndView();
      User user= (User)session.getAttribute("loginUser");
      List<Board> noboardlist = service.noboardlist();
      mav.addObject("noboardlist", noboardlist);   
      List<Board> mysuboardlist = service.mysuboardlist(user.getId());
      mav.addObject("mysuboardlist", mysuboardlist);   
      List<Promise> promiselist = service.promiselist(user.getId());      
      mav.addObject("promiselist",promiselist);      
      mav.addObject("proflieurl", user.getProfileurl1());
      return mav;
   }
   @GetMapping("noticewrite")
   public ModelAndView getnoticewrite(HttpSession session) {
      User user= (User)session.getAttribute("loginUser");      
      if(!user.getId().equals("admin")) {
         throw new BoardException("관리자만 사용가능합니다.","../main/main.shop");
      }
      ModelAndView mav = new ModelAndView();
      mav.addObject("proflieurl", user.getProfileurl1());
      return mav;
   }
   @PostMapping("noticewrite")
   public ModelAndView postnoticewrite(String boardsubject, String boardcontent,HttpSession session) {
      ModelAndView mav = new ModelAndView();      
      service.noticewrite(boardsubject, boardcontent);         
      mav.setViewName("redirect:notice.shop");
      return mav;
   }

   @RequestMapping("suggest")
   public ModelAndView suggest(Integer pageNum, HttpSession session) {
      User user= (User)session.getAttribute("loginUser");   
      if(pageNum == null || pageNum.toString().equals("")) {
         pageNum = 1;
      }
      ModelAndView mav = new ModelAndView();
      int limit = 10;    
      int sulistcount = service.suboardcount();
      List<Board> suboardlist = service.suboardlist(pageNum, limit);
      int maxpage = (int)((double)sulistcount/limit + 0.95);
      int startpage = (int)((pageNum/10.0 + 0.9) - 1) * 10 + 1;
      int endpage = startpage + 9;
      if(endpage > maxpage) endpage = maxpage;
      int boardno = sulistcount - (pageNum - 1) * limit;
      mav.addObject("proflieurl", user.getProfileurl1());
      mav.addObject("pageNum", pageNum);
      mav.addObject("maxpage", maxpage);
      mav.addObject("startpage", startpage);
      mav.addObject("endpage", endpage);
      mav.addObject("listcount", sulistcount);      
      mav.addObject("boardno", boardno);
      mav.addObject("suboardlist", suboardlist);
      return mav;
   }
   @RequestMapping("suggestwrite")
   public ModelAndView suggestwrite(HttpSession session) {
      User user = (User)session.getAttribute("loginUser");      
      ModelAndView mav = new ModelAndView();
      mav.addObject("nickname",user.getNickname());
      mav.addObject("proflieurl", user.getProfileurl1());
      return mav;
   }
   @RequestMapping("suggestwrite2")
   public ModelAndView suggestwrite2(String boardid, String boardsubject, String boardcontent) {            
      ModelAndView mav = new ModelAndView();      
      service.suboardinsert(boardid, boardsubject, boardcontent);
      mav.setViewName("redirect:notice.shop");
      return mav;
   }
   @RequestMapping("suggestdetail")
   public ModelAndView suggestdetail(HttpSession session,Integer boardnum) {
      ModelAndView mav = new ModelAndView();
      User user= (User)session.getAttribute("loginUser");
      Board board = service.boarddetail(boardnum);
      if(board == null) {
         throw new BoardException("없는 게시물입니다.","../main/main.shop");
      }
      if(!board.getId().equals(user.getId()) && !user.getId().equals("admin")) {
         throw new BoardException("본인 건의사항만 볼 수 있습니다.","../main/main.shop");
      }
      Comment comment = service.commentdetail(boardnum);
      mav.addObject("proflieurl", user.getProfileurl1());
      mav.addObject("comment",comment);
      mav.addObject("board",board);
      return mav;
   }
   @PostMapping("commentwrite")
   public ModelAndView commentwrite(Integer boardnum, String commenttext) {
      ModelAndView mav = new ModelAndView();
      Comment comment = new Comment();
      boolean check = service.check(boardnum);
      if(check) {
         throw new BoardException("이미 처리된 건의사항입니다.","suggestdetail.shop?boardnum="+boardnum);
      }
      if(commenttext.equals("")) {
         throw new BoardException("댓글을 입력하세요.","suggestdetail.shop?boardnum="+boardnum);
      }      
      comment.setBoardnum(boardnum);
      comment.setCommentday(new Date());
      comment.setCommenttext(commenttext);
      service.boardacceptup(boardnum);
      service.commentwrite(comment);      
      mav.setViewName("redirect:suggestdetail.shop?boardnum="+boardnum);      
      return mav;
   }   
   
   @RequestMapping("reportdetail")
   public ModelAndView reportdetail() {
      ModelAndView mav = new ModelAndView();
      return mav;
   }
   
   @RequestMapping("report")
   public ModelAndView report(HttpSession session) {
      ModelAndView mav = new ModelAndView();
      User user= (User)session.getAttribute("loginUser");
      if(!user.getId().equals("admin")) {
         throw new BoardException("관리자만 접근 가능합니다.","../main/main.shop");
      }
      List<Report> relist = service.reportlist();
      mav.addObject("proflieurl", user.getProfileurl1());
      mav.addObject("relist", relist);
      return mav;
   }
   
   
   @RequestMapping("review")
    public ModelAndView review(Integer pageNum,HttpSession session) {
      if(pageNum == null || pageNum.toString().equals("")) {
         pageNum = 1;
      }
      User user= (User)session.getAttribute("loginUser");
      ModelAndView mav = new ModelAndView();
      int limit = 10;    
      int relistcount = service.reboardcount(3);
      List<Board> reboardlist = service.reboardlist(pageNum, limit);
      int maxpage = (int)((double)relistcount/limit + 0.95);
      int startpage = (int)((pageNum/10.0 + 0.9) - 1) * 10 + 1;
      int endpage = startpage + 9;
      if(endpage > maxpage) endpage = maxpage;
      int boardno = relistcount - (pageNum - 1) * limit;
      mav.addObject("pageNum", pageNum);
      mav.addObject("maxpage", maxpage);
      mav.addObject("startpage", startpage);
      mav.addObject("endpage", endpage);
      mav.addObject("listcount", relistcount);      
      mav.addObject("boardno", boardno);
      mav.addObject("reboardlist", reboardlist);
      mav.addObject("proflieurl", user.getProfileurl1());
      return mav;
    }
   @PostMapping("review2")
    public ModelAndView review2(HttpServletRequest request) {
      ModelAndView mav = new ModelAndView();
      Integer review = Integer.parseInt(request.getParameter("review"));      
      return mav;
   }
    @GetMapping("reviewwrite")
    public ModelAndView reviewwrite(HttpSession session) {
       User user= (User)session.getAttribute("loginUser");       
       ModelAndView mav = new ModelAndView();
       mav.addObject("proflieurl", user.getProfileurl1());
       mav.addObject("user",user);
       return mav;
    }
    @PostMapping("reviewwrite")
    public ModelAndView reviewwrite2(HttpSession session, String boardsubject, String boardcontent,Integer review) {
       ModelAndView mav = new ModelAndView();
       User user= (User)session.getAttribute("loginUser");
       Board board = new Board();       
       board.setBoardtype(review);
       board.setBoardcontent(boardcontent);
       board.setBoardsubject(boardsubject);
       board.setId(user.getId());
       service.reboardwrite(board); 
       mav.setViewName("redirect:review.shop");
       return mav;
    }
      
    @RequestMapping("reviewdetail")
    public ModelAndView reviewdetail(Integer boardnum) {
       ModelAndView mav = new ModelAndView();
      Board board = service.boarddetail(boardnum);
      mav.addObject("board",board);
      return mav;
      
    }
    @RequestMapping("promise")
   public ModelAndView promise(HttpSession session) {
      ModelAndView mav = new ModelAndView();   
      User user= (User)session.getAttribute("loginUser");
      List<Promise> prolist = service.mypromiselist(user.getId());
      mav.addObject("proflieurl", user.getProfileurl1());
      mav.addObject("prolist",prolist);
      return mav;
   }
    @RequestMapping("promisedetail")
      public ModelAndView promisedetail(Integer promisenum,HttpSession session) {
         ModelAndView mav = new ModelAndView();
         User loginUser = (User)session.getAttribute("loginUser");         
         Promise promise = service.promisedetail(promisenum);
         mav.addObject("proflieurl", loginUser.getProfileurl1());
         if(promise == null) {
            throw new BoardException("잘못된 접근입니다.","../main/main.shop");
         }
         String id = promise.getId();
         String goodid = promise.getGoodid();
         if(loginUser.getId().equals(id) || loginUser.getId().equals(goodid)) {
            User user = service.userselectone(id);         
               mav.addObject("promise",promise);
               mav.addObject("promiseuser",user);         
               return mav;
         }
         else {
            throw new BoardException("본인과 약속받은 사람만 열람가능.","../main/main.shop");
         }
         
      }
    @RequestMapping("promiseyes")
    public ModelAndView promiseyes(String goodid,String id) {
         ModelAndView mav = new ModelAndView();
         service.promiseaccept(goodid,id);
         mav.addObject("msg", "약속 수락.");
      mav.addObject("url","notice.shop");
      mav.setViewName("alert");
         return mav;
      }
    @RequestMapping("promiseno")
    public ModelAndView promiseno(String goodid,String id) { // goodid : 약속받은사람 , id : 보낸사람
         ModelAndView mav = new ModelAndView();
         System.out.println("goodid="+goodid+"id="+id);
         service.promisedelete(goodid,id);
         mav.addObject("msg", "약속 거절.");
      mav.addObject("url","notice.shop");
      mav.setViewName("alert");
         return mav;
      }
}
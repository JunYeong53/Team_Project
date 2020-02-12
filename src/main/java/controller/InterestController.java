package controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import logic.Chatroom;
import logic.Interest;
import logic.ShopService;
import logic.User;

@Controller
@RequestMapping("interest")
public class InterestController {
   
   @Autowired
   private ShopService service;
   
   @RequestMapping("interest")
   public ModelAndView interest(HttpSession session) {
      ModelAndView mav = new ModelAndView();
      List<Chatroom> chatlist = chatroom(session); // 內丑
      User user = (User)session.getAttribute("loginUser"); //內丑
      mav.addObject("proflieurl", user.getProfileurl1());// 內丑
       mav.addObject("chatlist", chatlist); // 內丑
      List<Interest> interestlist = service.interestlist();
      mav.addObject("interestlist", interestlist);
      return mav;
   }
   
   // ================================================================
   @GetMapping("member")
   public ModelAndView member(String interestname, HttpSession session) {
      ModelAndView mav = new ModelAndView();
      User loginuser = (User)session.getAttribute("loginUser");
      List<Chatroom> chatlist = chatroom(session);      
       mav.addObject("chatlist", chatlist);
       mav.addObject("proflieurl", loginuser.getProfileurl1());
      int join = 1;
      Interest it = service.selectinterest(interestname);
      try {
         if(loginuser.getInterestname1() != null && loginuser.getInterestname1().equals(interestname)) join = 2;
         if(loginuser.getInterestname2() != null && loginuser.getInterestname2().equals(interestname))  join = 2;
         if(loginuser.getInterestname3() != null && loginuser.getInterestname3().equals(interestname))  join = 2;
         if(loginuser.getInterestname4() != null && loginuser.getInterestname4().equals(interestname))  join = 2;
         if(loginuser.getInterestname5() != null && loginuser.getInterestname5().equals(interestname))  join = 2;
         if(loginuser.getInterestname6() != null && loginuser.getInterestname6().equals(interestname))  join = 2;
         mav.addObject("join", join);
      }catch(NullPointerException n) {
         n.printStackTrace();
      }
      List<User> userlist = service.interestuserlist(interestname, loginuser.getGender());
      mav.addObject("userlist", userlist);
      mav.addObject("it", it);
      
      List<String> itname = new ArrayList<>();
       itname.add(loginuser.getInterestname1());
       itname.add(loginuser.getInterestname2());
       itname.add(loginuser.getInterestname3());
       itname.add(loginuser.getInterestname4());
       itname.add(loginuser.getInterestname5());
       itname.add(loginuser.getInterestname6());
       
       int cnt = 0;
       int idx = 0;
       while(cnt < 6) {
          if(itname.get(idx) == null) {
                itname.remove(idx);
             }
             else {
                idx++;
             }
             cnt++;
          }
       mav.addObject("itcnt", itname.size());
      return mav;
   }
   
   private List<Chatroom> chatroom(HttpSession session){
      User u = (User)session.getAttribute("loginUser");
      List<Chatroom> chatlist = service.roomlist(u.getId());
      for(int i = 0; i < chatlist.size(); i++) {
         String pi = "";
         if(chatlist.get(i).getId().equals(u.getId())) pi = chatlist.get(i).getGoodid();
         if(chatlist.get(i).getGoodid().equals(u.getId())) pi = chatlist.get(i).getId();
         User p = service.userselectone(pi);
         chatlist.get(i).setUser(p);
      }      
      return chatlist;
   }
}
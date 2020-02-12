package controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import logic.Chatroom;
import logic.ShopService;
import logic.User;

@Controller
@RequestMapping("search")
public class SearchController {
    @Autowired
      private ShopService service;
    
    private List<Chatroom> chatroom(HttpSession session) {
		User u = (User) session.getAttribute("loginUser");
		List<Chatroom> chatlist = service.roomlist(u.getId());
		for (int i = 0; i < chatlist.size(); i++) {
			String pi = "";
			if (chatlist.get(i).getId().equals(u.getId()))
				pi = chatlist.get(i).getGoodid();
			if (chatlist.get(i).getGoodid().equals(u.getId()))
				pi = chatlist.get(i).getId();
			User p = service.userselectone(pi);
			chatlist.get(i).setUser(p);
		}
		return chatlist;
	}
    
    @RequestMapping("searchscreen")
    public ModelAndView serarchscreen(HttpSession session) {
       ModelAndView mav = new ModelAndView();
       User user = (User)session.getAttribute("loginUser");
       List<Chatroom> chatlist = chatroom(session);
       mav.addObject("chatlist", chatlist);
       mav.addObject("proflieurl", user.getProfileurl1());
       mav.addObject("user", user);
        return mav;
     }
    
    @PostMapping("addr")
    public ModelAndView addr(HttpSession session) {
       ModelAndView mav = new ModelAndView();
       List<Chatroom> chatlist = chatroom(session);
       User user = (User)session.getAttribute("loginUser");
       mav.addObject("proflieurl", user.getProfileurl1());
		mav.addObject("chatlist", chatlist);
        return mav;
     }
    @PostMapping("agehigh")
    public ModelAndView agehigh(HttpSession session) {
       ModelAndView mav = new ModelAndView();
       User user = (User)session.getAttribute("loginUser");
       mav.addObject("proflieurl", user.getProfileurl1());
       List<Chatroom> chatlist = chatroom(session);
		mav.addObject("chatlist", chatlist);
        return mav;
     }
    @PostMapping("agelow")
    public ModelAndView agelow(HttpSession session) {
       ModelAndView mav = new ModelAndView();
       User user = (User)session.getAttribute("loginUser");
       mav.addObject("proflieurl", user.getProfileurl1());
       List<Chatroom> chatlist = chatroom(session);
		mav.addObject("chatlist", chatlist);
        return mav;
     }
    @PostMapping("height")
    public ModelAndView heighthigh(HttpSession session) {
       ModelAndView mav = new ModelAndView();
       User user = (User)session.getAttribute("loginUser");
       mav.addObject("proflieurl", user.getProfileurl1());
       List<Chatroom> chatlist = chatroom(session);
		mav.addObject("chatlist", chatlist);
        return mav;
     }
    @PostMapping("body")
    public ModelAndView body(HttpSession session) {
       ModelAndView mav = new ModelAndView();
       User user = (User)session.getAttribute("loginUser");
       mav.addObject("proflieurl", user.getProfileurl1());
       List<Chatroom> chatlist = chatroom(session);
		mav.addObject("chatlist", chatlist);
        return mav;
     }
    @PostMapping("education")
    public ModelAndView education(HttpSession session) {
       ModelAndView mav = new ModelAndView();
       User user = (User)session.getAttribute("loginUser");
       mav.addObject("proflieurl", user.getProfileurl1());
       List<Chatroom> chatlist = chatroom(session);
		mav.addObject("chatlist", chatlist);
        return mav;
     }
    @PostMapping("pay")
    public ModelAndView pay(HttpSession session) {
       ModelAndView mav = new ModelAndView();
       User user = (User)session.getAttribute("loginUser");
       mav.addObject("proflieurl", user.getProfileurl1());
       List<Chatroom> chatlist = chatroom(session);
		mav.addObject("chatlist", chatlist);
        return mav;
     }
    
}
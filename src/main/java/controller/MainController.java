package controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import logic.Board;
import logic.ShopService;
import logic.User;

@Controller
@RequestMapping("main")
public class MainController {
	
	@Autowired
	private ShopService service;

	@RequestMapping("main")
	   public String checkmain(HttpSession session, Model model) {
	      User loginuser = (User)session.getAttribute("loginUser");
	      model.addAttribute("id", loginuser.getId());
	      return "main/main";
	   } 
	
	@RequestMapping("test2")
	   public ModelAndView test() {
	      ModelAndView mav = new ModelAndView();
	      return mav;
	   }
	
	@RequestMapping("index")
	   public ModelAndView index() {
	      List<Board> blist = service.review5();//list 전체 가져오기
	      for(int i = 0; i < blist.size(); i++) {
	         User u = service.userselectone(blist.get(i).getId());
	         blist.get(i).setUser(u);
	      } 
	      ModelAndView mav = new ModelAndView();
	      mav.addObject("blist", blist);
	      return mav; 
	   } 
	
	 @RequestMapping("self_love_result")
	   public ModelAndView self_love_result() {
	      ModelAndView mav = new ModelAndView();
	      return mav;
	   }

}

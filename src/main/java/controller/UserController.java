package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import logic.ShopService;

@Controller
@RequestMapping("user")
public class UserController {
	
	@Autowired
	private ShopService service;
	
	@RequestMapping("usersearch")
	public ModelAndView usersearch() {
		ModelAndView mav = new ModelAndView();
		return mav;
	}
	
	@RequestMapping("history")
	public ModelAndView history() {
		ModelAndView mav = new ModelAndView();
		return mav;
	}
	
	@RequestMapping("receive")
	public ModelAndView receive() {
		ModelAndView mav = new ModelAndView();
		return mav;
	}

	@RequestMapping("give")
	public ModelAndView give() {
		ModelAndView mav = new ModelAndView();
		return mav;
	}
	
	@RequestMapping("mypage")
	   public ModelAndView mypage() {
	      ModelAndView mav = new ModelAndView();
	      return mav;
	   }

}

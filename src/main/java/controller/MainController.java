package controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import logic.ShopService;

@Controller
@RequestMapping("main")
public class MainController {
	
	@Autowired
	private ShopService service;

	@RequestMapping("main")
	public String checkmain(HttpSession session) {
		return "main/main";
	}
	
	@RequestMapping("test2")
	public ModelAndView test() {
		ModelAndView mav = new ModelAndView();
		return mav;
	}
	
	@RequestMapping("index")
	public ModelAndView index() {
		ModelAndView mav = new ModelAndView();
		return mav;
	}

}

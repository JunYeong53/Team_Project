package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import logic.ShopService;

@Controller
@RequestMapping("interest")
public class InterestController {
	
	@Autowired
	private ShopService service;
	
	@RequestMapping("interest")
	public ModelAndView interest() {
		ModelAndView mav = new ModelAndView();
		return mav;
	}
	
	@RequestMapping("member")
	public ModelAndView member() {
		ModelAndView mav = new ModelAndView();
		return mav;
	}
}

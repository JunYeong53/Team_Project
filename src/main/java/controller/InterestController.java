package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import logic.Interest;
import logic.ShopService;
import logic.User;

@Controller
@RequestMapping("interest")
public class InterestController {
	
	@Autowired
	private ShopService service;
	
	@RequestMapping("interest")
	public ModelAndView interest() {
		ModelAndView mav = new ModelAndView();
		Interest list = service.interest();
		int ic = service.interestcount();
		mav.addObject("ic",ic);
		mav.addObject("list",list);
		return mav;
	}
	
	@RequestMapping("member")
	public ModelAndView member() {
		ModelAndView mav = new ModelAndView();
		User user = service.select();
		mav.addObject("user",user);
		return mav;
	}
}

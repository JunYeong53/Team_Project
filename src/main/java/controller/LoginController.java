package controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import logic.ShopService;
import logic.User;

@Controller
@RequestMapping("login")
public class LoginController {
	@Autowired
	private ShopService service;
	
	@GetMapping("login")
	public ModelAndView login() {
		ModelAndView mav = new ModelAndView();
		return mav;
	}
	
	@PostMapping("login")
	public ModelAndView userlogin() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:main.shop");
		return mav;
	}
	
	@GetMapping("joinid")
	public ModelAndView joinid() {
		ModelAndView mav = new ModelAndView();
		mav.addObject(new User());
		return mav;
	}
	
	@PostMapping("joinpass")
	public ModelAndView joinpass(User user) {
		ModelAndView mav = new ModelAndView();
		mav.addObject(user);
		return mav;
	}
	
	@PostMapping("joingender")
	public ModelAndView joingender(User user) {
		ModelAndView mav = new ModelAndView();
		mav.addObject(user);
		return mav;
	}
	
	@PostMapping("joinphone")
	public ModelAndView joinphone(User user) {
		ModelAndView mav = new ModelAndView();
		mav.addObject(user);
		return mav;
	}
	
	@PostMapping("joinbirthday")
	public ModelAndView joinbirthday(User user) {
		ModelAndView mav = new ModelAndView();
		mav.addObject(user);
		return mav;
	}
	
	@PostMapping("joinaddr")
	public ModelAndView joinaddr(User user, String year, String mon, String day) {
		ModelAndView mav = new ModelAndView();
		if(Integer.parseInt(mon) < 10) mon = "0" + mon;
		if(Integer.parseInt(day) < 10) day = "0" + day;
		String str = year +"-"+ mon +"-"+ day;
		mav.addObject("birth", str);
		mav.addObject(user);
		return mav;
	}
	
	@PostMapping("joinnick")
	public ModelAndView joinnick(User user, String birth) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("birth", birth);
		mav.addObject(user);
		return mav;
	}
	
	@PostMapping("joinpic")
	public ModelAndView joinpic(User user, String birth) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("birth", birth);
		System.out.println(birth);
		mav.addObject(user);
		return mav;
	}
	
	@PostMapping("joinheight")
	public ModelAndView joinheight() {
		ModelAndView mav = new ModelAndView();
		return mav;
	}
	
	@PostMapping("joinbody")
	public ModelAndView joinbody() {
		ModelAndView mav = new ModelAndView();
		return mav;
	}
	
	@PostMapping("joineducation")
	public ModelAndView joineducation() {
		ModelAndView mav = new ModelAndView();
		return mav;
	}
	
	@PostMapping("joinpay")
	public ModelAndView joinpay() {
		ModelAndView mav = new ModelAndView();
		return mav;
	}
	
	@PostMapping("joinagehigh")
	public ModelAndView joinagehigh() {
		ModelAndView mav = new ModelAndView();
		return mav;
	}
	
	@PostMapping("joinagelow")
	public ModelAndView joinagelow() {
		ModelAndView mav = new ModelAndView();
		return mav;
	}
	
	@PostMapping("joinready")
	public ModelAndView joinready() {
		ModelAndView mav = new ModelAndView();
		return mav;
	}
	
	@RequestMapping("main")
	public String checkmain() {
		return "main/main";
	}
}

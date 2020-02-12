package controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.security.auth.login.LoginException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import logic.Picture;
import logic.ShopService;
import logic.User;

@Controller
@RequestMapping("login")
public class LoginController {
   @Autowired
   private ShopService service;
   
   @GetMapping("login")
   public String login(Model model) {
      model.addAttribute(new User());
      return null;
   }
   
   @PostMapping("login")
   public ModelAndView userlogin(User user, HttpSession session) {
      ModelAndView mav = new ModelAndView();
      User dbuser = service.userselectone(user.getId());
      if(!user.getPassword().equals(dbuser.getPassword())) return mav;
      else {
         session.setAttribute("loginUser", dbuser);        
         mav.setViewName("redirect:../main/main.shop");
         return mav;
      }
   }
   
   @GetMapping("joinid")
   public ModelAndView joinid() {
      ModelAndView mav = new ModelAndView();
      mav.addObject(new User());
      return mav;
   }
   
   
   @PostMapping("joinpass")
   public ModelAndView joinpass(User user){
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
   @PostMapping("joinemail")
   public ModelAndView joinemail(User user, String year, String mon, String day) {
         ModelAndView mav = new ModelAndView();
         if(Integer.parseInt(mon) < 10) mon = "0" + mon;
         if(Integer.parseInt(day) < 10) day = "0" + day;
         String str = year +"-"+ mon +"-"+ day;
         mav.addObject("birth", str);         
         mav.addObject(user);
         return mav;
      }
   
   @PostMapping("joinaddr")
   public ModelAndView joinaddr(User user, String birth) {
      ModelAndView mav = new ModelAndView();     
      mav.addObject("birth", birth);
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
      mav.addObject(user);
      return mav;
   }
   
   @PostMapping("joinheight")
   public ModelAndView joinheight(User user, String birth) {
      ModelAndView mav = new ModelAndView();
      mav.addObject("birth", birth);
      mav.addObject(user);
      return mav;
   }
   
   @PostMapping("joinbody")
   public ModelAndView joinbody(User user, String birth) {
      ModelAndView mav = new ModelAndView();
      mav.addObject("birth", birth);
      mav.addObject(user);
      return mav;
   }
   
   @PostMapping("joineducation")
   public ModelAndView joineducation(User user, String birth) {
      ModelAndView mav = new ModelAndView();
      mav.addObject("birth", birth);
      mav.addObject(user);
      return mav;
   }
   
   @PostMapping("joinpay")
   public ModelAndView joinpay(User user, String birth) {
      ModelAndView mav = new ModelAndView();
      mav.addObject("birth", birth);
      mav.addObject(user);
      return mav;
   }
   
   @PostMapping("joinagehigh")
   public ModelAndView joinagehigh(User user, String birth) {
      ModelAndView mav = new ModelAndView();
      mav.addObject("birth", birth);
      mav.addObject(user);
      return mav;
   }
   
   @PostMapping("joinagelow")
   public ModelAndView joinagelow(User user, String birth) {
      ModelAndView mav = new ModelAndView();
      mav.addObject("birth", birth);
      mav.addObject(user);
      return mav;
   }
   
   @PostMapping("joinready")
   public ModelAndView joinready(User user, String birth) {
      ModelAndView mav = new ModelAndView();
      Date d = new Date();
      SimpleDateFormat sf = new SimpleDateFormat();
      try {
         d = java.sql.Date.valueOf(birth);
      }catch(Exception e) {
         e.printStackTrace();
      }
      java.util.Calendar cal = java.util.Calendar.getInstance();
      int year = cal.get (cal.YEAR);
      int age = year - Integer.parseInt(birth.substring(0, 4));
      user.setAge(age+1);
      user.setBirthday(d);
      service.userjoin(user);
      return mav;
   }
   @RequestMapping("main")
   public String checkmain() {
      return "main/main";
   }
   
   @GetMapping("picture")
   public ModelAndView picform() {
      ModelAndView mav = new ModelAndView();
      mav.addObject(new Picture());
      return mav;
   }
   
   @PostMapping("picture")
   public ModelAndView picture(Picture picture, HttpServletRequest request) {
      ModelAndView mav = new ModelAndView();
      service.uploadprofile(picture.getFile1(), request);
      picture.setPictureurl(picture.getFile1().getOriginalFilename());
      mav.addObject(picture);
      mav.setViewName("pic");
      return mav;
   }
   @RequestMapping("idsearch")
   public ModelAndView idsearch() {
         ModelAndView mav = new ModelAndView();         
         return mav;
   }
   @RequestMapping("passsearch")
   public ModelAndView passsearch() {
         ModelAndView mav = new ModelAndView();         
         return mav;
   }
   @RequestMapping("idresult")
   public ModelAndView idresult(String email) {
         ModelAndView mav = new ModelAndView();
         String id = service.useridsearch(email);
         mav.addObject("id",id);
         return mav;
   }
   @RequestMapping("passresult")
   public ModelAndView passresult(String id, String email) {
         ModelAndView mav = new ModelAndView();
         String pass = service.userpwsearch(id,email);
         mav.addObject("pass",pass);
         return mav;
   }
}
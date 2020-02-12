package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import logic.ShopService;
import logic.User;

@Controller
@RequestMapping("admin")
public class AdminController {
   
   @Autowired
   private ShopService service; 
   
    @RequestMapping("list")
    public ModelAndView list() { 
       List<User> adlist = service.adlist();
       System.out.print(adlist);
        ModelAndView mav = new ModelAndView();
        mav.addObject("adlist",adlist);
       return mav; 
    } 
}   
 
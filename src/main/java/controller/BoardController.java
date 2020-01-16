package controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import logic.ShopService;

@Controller
@RequestMapping("board")
public class BoardController {
	
	@Autowired
	private ShopService service;
	
	@RequestMapping("notice")
	public String checkmain() {
		return "board/notice";
	}

	@RequestMapping("suggest")
	public ModelAndView suggest() {
		ModelAndView mav = new ModelAndView();
		return mav;
	}
	
	@RequestMapping("suggestdetail")
	public ModelAndView suggestdetail() {
		ModelAndView mav = new ModelAndView();
		return mav;
	}
	
	@RequestMapping("suggestwrite")
	public ModelAndView suggestwrite() {
		ModelAndView mav = new ModelAndView();
		return mav;
	}
	
	@RequestMapping("reportdetail")
	public ModelAndView reportdetail() {
		ModelAndView mav = new ModelAndView();
		return mav;
	}
	
	@RequestMapping("report")
	public ModelAndView report() {
		ModelAndView mav = new ModelAndView();
		return mav;
	}
	
	@RequestMapping("reportwrite")
	public ModelAndView reportwrite() {
		ModelAndView mav = new ModelAndView();
		return mav;
	}
	
	@RequestMapping("review")
    public ModelAndView review() {
       ModelAndView mav = new ModelAndView();
       return mav;
    }
    
    @RequestMapping("reviewwrite")
    public ModelAndView reviewwrite() {
       ModelAndView mav = new ModelAndView();
       return mav;
    }
      
    @RequestMapping("reviewtail")
    public ModelAndView reviewtail() {
       ModelAndView mav = new ModelAndView();
       return mav;
    }
}

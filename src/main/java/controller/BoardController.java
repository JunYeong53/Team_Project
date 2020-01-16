package controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import logic.Board;
import logic.ShopService;

@Controller
@RequestMapping("board")
public class BoardController {
	
	@Autowired
	private ShopService service;
	
	@RequestMapping("notice")
	public ModelAndView notice(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		List<Board> noboardlist = service.noboardlist();
		mav.addObject("noboardlist", noboardlist);
		return mav;
	}
	@GetMapping("noticewrite")
	public ModelAndView getnoticewrite() {
		ModelAndView mav = new ModelAndView();		
		return mav;
	}
	@PostMapping("noticewrite")
	public ModelAndView postnoticewrite(String boardsubject, String boardcontent) {
		ModelAndView mav = new ModelAndView();
		service.noticewrite(boardsubject, boardcontent);
		mav.setViewName("redirect:notice.shop");
		return mav;
	}

	@RequestMapping("suggest")
	public ModelAndView suggest(Integer pageNum) {
		if(pageNum == null || pageNum.toString().equals("")) {
			pageNum = 1;
		}
		ModelAndView mav = new ModelAndView();
		int limit = 10; 	
		int sulistcount = service.suboardcount();
		List<Board> suboardlist = service.suboardlist(pageNum, limit);
		int maxpage = (int)((double)sulistcount/limit + 0.95);
		int startpage = (int)((pageNum/10.0 + 0.9) - 1) * 10 + 1;
		int endpage = startpage + 9;
		if(endpage > maxpage) endpage = maxpage;
		int boardno = sulistcount - (pageNum - 1) * limit;
		mav.addObject("pageNum", pageNum);
		mav.addObject("maxpage", maxpage);
		mav.addObject("startpage", startpage);
		mav.addObject("endpage", endpage);
		mav.addObject("listcount", sulistcount);		
		mav.addObject("boardno", boardno);
		mav.addObject("suboardlist", suboardlist);
		return mav;
	}
	
	@RequestMapping("suggestdetail")
	public ModelAndView suggestdetail(Integer boardnum) {
		ModelAndView mav = new ModelAndView();
		Board board = service.boarddetail(boardnum);
		mav.addObject("board",board);
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
    public ModelAndView review(Integer pageNum) {
		if(pageNum == null || pageNum.toString().equals("")) {
			pageNum = 1;
		}
		ModelAndView mav = new ModelAndView();
		int limit = 10; 	
		int relistcount = service.reboardcount();
		List<Board> reboardlist = service.reboardlist(pageNum, limit);
		int maxpage = (int)((double)relistcount/limit + 0.95);
		int startpage = (int)((pageNum/10.0 + 0.9) - 1) * 10 + 1;
		int endpage = startpage + 9;
		if(endpage > maxpage) endpage = maxpage;
		int boardno = relistcount - (pageNum - 1) * limit;
		mav.addObject("pageNum", pageNum);
		mav.addObject("maxpage", maxpage);
		mav.addObject("startpage", startpage);
		mav.addObject("endpage", endpage);
		mav.addObject("listcount", relistcount);		
		mav.addObject("boardno", boardno);
		mav.addObject("reboardlist", reboardlist);
		return mav;
    }
    
    @RequestMapping("reviewwrite")
    public ModelAndView reviewwrite() {
       ModelAndView mav = new ModelAndView();
       return mav;
    }
      
    @RequestMapping("reviewdetail")
    public ModelAndView reviewdetail(Integer boardnum) {
    	ModelAndView mav = new ModelAndView();
		Board board = service.boarddetail(boardnum);
		mav.addObject("board",board);
		return mav;
    }
}

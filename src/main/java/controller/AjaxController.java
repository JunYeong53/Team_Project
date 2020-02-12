package controller;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import exception.AjaxException;
import logic.Board;
import logic.Chatroom;
import logic.Interest;
import logic.Message;
import logic.Promise;
import logic.ShopService;
import logic.User;

@Controller
@RequestMapping("ajax")
public class AjaxController {
    @Autowired
      private ShopService service;
   
    @PostMapping("usersearch")   
    public ModelAndView userdetail(HttpServletRequest request, HttpSession session) {
       ModelAndView mav = new ModelAndView();
       User user = (User)session.getAttribute("loginUser");
       String id = request.getParameter("id");     
       User selectuser = service.userselectone(id);   //상대방 id 값으로 상대방 정보 가져오기  
       String good = service.giveuserone(user.getId(), id); // 내가 좋아요를 요청한 상대방 id 확인
       String good2 = service.goodcheck3(user.getId(), id);
       System.out.println(good);
       mav.addObject("good",good); // 좋아요!, 좋아요! 취소의 조건
       mav.addObject("good2",good2); // 매칭완료된 상대일 때
       try {
          service.historyinsert(user.getId(), id);
       } catch (Exception e) {
          //e.printStackTrace();
       }   
       
       List<String> itname = new ArrayList<>();
       List<Interest> itlist = new ArrayList<>();
       itname.add(selectuser.getInterestname1());
       itname.add(selectuser.getInterestname2());
       itname.add(selectuser.getInterestname3());
       itname.add(selectuser.getInterestname4());
       itname.add(selectuser.getInterestname5());
       itname.add(selectuser.getInterestname6());
       System.out.println(itname);
       int cnt = 0;
       int idx = 0;
       while(cnt < 6) {
          if(itname.get(idx) == null) {
             itname.remove(idx);
          }
          else {
             idx++;
          }
          cnt++;
       }
       System.out.println(itname.size());
       for(int i = 0; i < itname.size(); i++) {
          Interest insterest = service.selectinterest(itname.get(i));
          itlist.add(insterest);
       }

       mav.addObject("user",selectuser);   
       mav.addObject("itlist",itlist);
       mav.addObject("itcnt", itlist.size());
       
       return mav;
    }
    
    @GetMapping("insertchat")
    public ModelAndView insertchat(HttpServletRequest request, HttpSession session) {
    	ModelAndView mav = new ModelAndView();
    	User user = (User)session.getAttribute("loginUser");
    	String msg = request.getParameter("msg");
    	int chatnum = Integer.parseInt(request.getParameter("chatnum"));
    	//System.out.println("msg : "+msg);
    	//System.out.println("chatnum :" + chatnum);
    	Message ms = new Message();
    	ms.setMessagenum(service.msgmaxnum() + 1);
    	ms.setMessagesender(user.getId());
    	ms.setMessagecontent(msg);
    	ms.setChatnum(chatnum);
    	//System.out.println(ms);
    	service.insertmsg(ms);
    	//System.out.println(ms.getMessagesender());
    	return mav;
    }
    
    @PostMapping("joininterest")
    public void joininterest(HttpServletRequest request, HttpSession session) {
    	String interestname = request.getParameter("interestname");
    	User user = (User)session.getAttribute("loginUser");
    	if(user.getInterestname1() == null) user.setInterestname1(interestname);
    	else if(user.getInterestname1() != null && user.getInterestname2() == null) 
    			user.setInterestname2(interestname);
    	else if(user.getInterestname1() != null && user.getInterestname2() != null 
    			&& user.getInterestname3() == null) user.setInterestname3(interestname);
    	else if(user.getInterestname1() != null && user.getInterestname2() != null 
    			&& user.getInterestname3() != null && user.getInterestname4() == null) 
    			user.setInterestname4(interestname);
    	else if(user.getInterestname1() != null && user.getInterestname2() != null
    			&& user.getInterestname3() != null && user.getInterestname4() != null
    			&& user.getInterestname5() == null) user.setInterestname5(interestname);
    	else if(user.getInterestname1() != null && user.getInterestname2() != null
    			&& user.getInterestname3() != null && user.getInterestname4() != null 
    			&& user.getInterestname5() != null && user.getInterestname6() == null) 
    			user.setInterestname6(interestname);
    	else {return;}	
    	service.userupdate(user);
    }
    
    @PostMapping("deleteinterest")
    public void deleteinterest(HttpServletRequest request, HttpSession session) { 
    	String interestname = request.getParameter("interestname");
    	User user = (User)session.getAttribute("loginUser");
    	try {
    		if(user.getInterestname1() != null && user.getInterestname1().equals(interestname)) user.setInterestname1(null);
        	if(user.getInterestname2() != null && user.getInterestname2().equals(interestname)) user.setInterestname2(null);
        	if(user.getInterestname3() != null && user.getInterestname3().equals(interestname)) user.setInterestname3(null);
        	if(user.getInterestname4() != null && user.getInterestname4().equals(interestname)) user.setInterestname4(null);
        	if(user.getInterestname5() != null && user.getInterestname5().equals(interestname)) user.setInterestname5(null);
        	if(user.getInterestname6() != null && user.getInterestname6().equals(interestname)) user.setInterestname6(null);
        	service.userupdate(user);
    	}catch(Exception e) {
    		System.out.println("왜안되누");
    	}
    }
    
    @RequestMapping("good") // 좋아요 눌렀을때 호출
    @ResponseBody
    public Map<String, Object> good(String id, HttpSession session) {
       HashMap<String, Object> hashmap = new HashMap<String, Object>();
       User loginUser = (User)session.getAttribute("loginUser");
       String myid = loginUser.getId();
       try {
       if(service.reqinsert(myid, id) > 0) { // req 테이블 추가 나 -> 상대
    	  service.disgoodcnt(myid); // ㅊㄱ
          //mav.addObject("msg", id + "님을 좋아요 하셨습니다.");
          try { //상대도 나한테 좋아요! 했을시 good 테이블을 추가.
             System.out.println(service.goodcheck2(myid,id));
             if(service.goodcheck2(myid,id).equals(id) && service.goodcheck(myid, id).equals(myid)) {
             service.goodinsert(myid, id); // good 테이블에 추가
             Chatroom cr = new Chatroom();
             cr.setId(myid);
             cr.setGoodid(id);
             service.chatroomcreate(cr);
             service.reqdelete(myid, id); // good 테이블에 추가하고 해당 아이디 req 테이블 모두 삭제
             service.reqdelete2(myid, id);
             cr = service.selectchat2(myid, id);
             User u = service.userselectone(id);
             cr.setUser(u);
             hashmap.put("c_num", cr.getChatnum());
             hashmap.put("c_img", cr.getUser().getProfileurl1());
             hashmap.put("c_nick", cr.getUser().getNickname());
             hashmap.put("c_addr", cr.getUser().getAddress());
             hashmap.put("c_age", cr.getUser().getAge());
             
             }
          } catch(Exception e) {
             //e.printStackTrace();
          }
          return hashmap;
       }
       } catch (Exception e) {
          e.printStackTrace();
       }
       return hashmap;
    }
    
    @RequestMapping("goodcancel") // 좋아요 취소 눌렀을때 호출
    public ModelAndView goodcancel(String id, HttpSession session) {
       ModelAndView mav = new ModelAndView();
       User loginUser = (User)session.getAttribute("loginUser");
       String myid = loginUser.getId();
       try {
       if(service.reqdelete2(myid, id) > 0) { //내가 상대한테 건 좋아요 취소 (req테이블)
    	  service.incgoodcnt(myid); // ㅊㄱ
          mav.addObject("url", "");
       }
       return mav;
       } catch (Exception e) {
          mav.addObject("url", "");
          e.printStackTrace();
       }
       return mav;
    }
    
    @PostMapping("passing") // 넘기기 눌렀을때 호출
    public ModelAndView passing(String id, HttpSession session) {
       ModelAndView mav = new ModelAndView();
       User loginUser = (User)session.getAttribute("loginUser");
       String myid = loginUser.getId();
       try {
       if(service.reqdelete(myid, id) > 0) { //상대가 나한테 건 좋아요 취소 (req테이블)
          mav.addObject("msg",id + " 님을 취소하셨습니다.");
       }
       return mav;
       } catch (Exception e) {
          mav.addObject("msg","이미 취소된 상대입니다.");
          e.printStackTrace();
       }
       return mav;
    }
    
    @PostMapping("review")
    public ModelAndView review(HttpServletRequest request) {
       Integer pageNum = Integer.parseInt(request.getParameter("pageNum"));
       int review = Integer.parseInt(request.getParameter("review"));
       if(pageNum == null || pageNum.toString().equals("")) {
            pageNum = 1;
         }          
         ModelAndView mav = new ModelAndView();
         int limit = 10;    
         int relistcount = service.reboardcount(review);
         List<Board> reboardlist = service.ajaxreboardlist(pageNum, limit, review);
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
    @PostMapping("chatpromise")
    public ModelAndView chatpromise(HttpServletRequest request) throws ParseException  {
         
       int chatnum = Integer.parseInt(request.getParameter("chatnum"));
         ModelAndView mav = new ModelAndView();         
         String id = request.getParameter("id");
         String goodid = request.getParameter("goodid");
         boolean result = service.promiseselect(id,goodid);
         if(result) {            
            throw new AjaxException("이미 약속을 보내셨습니다.","../chat/chat.shop?chatnum="+chatnum);
         }
         double lat = Double.parseDouble(request.getParameter("lat"));
         double lon = Double.parseDouble(request.getParameter("lon"));
         String place = request.getParameter("place");
         String promisesubject = request.getParameter("promisesubject");
         String promisecontent = request.getParameter("promisecontent");
         String month = request.getParameter("month");
         String day = request.getParameter("day");
         String hour = request.getParameter("hour");
         String minute = request.getParameter("minute");
         if(Integer.parseInt(month) < 10) month = "0" + month;
         if(Integer.parseInt(day) < 10) day = "0" + day;
         if(Integer.parseInt(hour) < 10) hour = "0" + hour;      
         String promiseday = "2020-" + month +"-"+ day +" "+hour+":"+minute;         
         DateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm");
         Date d = format.parse(promiseday);
         System.out.println(d);
         Promise promise = new Promise();
         promise.setId(id);
         promise.setGoodid(goodid);
         promise.setLat(lat);
         promise.setLon(lon);
         promise.setPromisesubject(promisesubject);
         promise.setPromisecontent(promisecontent);
         promise.setPromiseday(d);
         promise.setKeyword(place);
         service.promiseinsert(promise);
         return mav;
      }
    
    @PostMapping("profiledelete")
    public void profiledelete(HttpServletRequest request) {
    	String url = request.getParameter("url");
    	String num = request.getParameter("num");
    	String id = request.getParameter("id");
    	User user = service.userselectone(id);
    	System.out.println(url);
    	System.out.println(num);
    	if(num.equals("2")) {
    		if(user.getProfileurl3() == null) {
    			user.setProfileurl2(null);
    			service.profileimgupdate(user);
    		}
    		else if(user.getProfileurl3() != null){
    			user.setProfileurl2(user.getProfileurl3());
    			user.setProfileurl3(null);
    			service.profileimgupdate(user);
    		}
    	}
    	else if(num.equals("3")) {
    		user.setProfileurl3(null);
    		service.profileimgupdate(user);
    	}
    }
    // ==============================================================
    
    @RequestMapping("followcancel")
    public void followcancel(HttpServletRequest request) {
    	String id = request.getParameter("id"); // 접속자 id
    	String goodid = request.getParameter("goodid"); // 상대방 id
    	int chatnum = Integer.parseInt(request.getParameter("chatnum")); // 삭제할 채팅방 번호
    	
    	service.gooddelete(id, goodid); // 삭
    	service.gooddelete(goodid, id); // 제
    	service.deletechatroom(chatnum); // 해
    }
    @RequestMapping("idcheck")
    @ResponseBody
    public Integer idcheck(HttpServletRequest request) {
    	String idcheck = request.getParameter("id");
    	int cnt = service.validid(idcheck);
    	return cnt;
    }
    
    @RequestMapping("nicknamecheck")
    @ResponseBody
    public Integer nicknamecheck(HttpServletRequest request) {
    	String nickcheck = request.getParameter("id");
    	int cnt = service.validnick(nickcheck);
    	return cnt;
    }
    
    @PostMapping("reportuser")
    public ModelAndView reportuser(HttpServletRequest request, HttpSession session) {
          ModelAndView mav = new ModelAndView();           
          String id = request.getParameter("id");             
          User user = service.userselectone(id);
          mav.addObject("user",user);
          return mav;
   }
    @PostMapping("report")
    public ModelAndView report(HttpServletRequest request) {
       ModelAndView mav = new ModelAndView();
       String id = request.getParameter("id"); // 신고받은넘
       String reportid = request.getParameter("reportid"); // 신고자(로그인한사람)          
       String reportcolumn = request.getParameter("reportcolumn");
       String reportcontent = request.getParameter("reportcontent");
       service.insertreport(reportid,id,reportcolumn,reportcontent);
       return mav;
    }
    @PostMapping("selectreport")
    @ResponseBody
    public String selectreport(HttpServletRequest request) {
       ModelAndView mav = new ModelAndView();
       String id = request.getParameter("id"); // 신고받은넘
       String reportid = request.getParameter("reportid"); // 신고자(로그인한사람)          
       boolean result = false;
      result = service.reportselect(reportid, id);
      if(result) {
         return "0";
      }
       return "1";
    }    
}
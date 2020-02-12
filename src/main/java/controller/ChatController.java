package controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import exception.BoardException;
import exception.ChatException;
import logic.Chatroom;
import logic.Interest;
import logic.Message;
import logic.ShopService;
import logic.User;

@Controller
@RequestMapping("chat")
public class ChatController {
	
	@Autowired
	private ShopService service;
	
	@RequestMapping("*")
	public String chat(Model model, Integer chatnum, HttpSession session) {
		Chatroom cr = service.selectchat(chatnum); // 해당 채팅방 번호 가져옴
		User user = (User)session.getAttribute("loginUser");
		if(!user.getId().equals(cr.getId()) && !user.getId().equals(cr.getGoodid())) {
			throw new ChatException("해당 채팅의 참여자가 아닙니다.","../main/main.shop");
		}
		List<Message> chatlist = service.chatlist(chatnum); // 해당 채팅방 번호를 이용해 채팅내역 조회
		List<Interest> intlist = new ArrayList<>(); // 상대방 관심사 리스트를 가져오기위해 리스트 생성
		
		for(int i = 0; i < chatlist.size(); i++) {
			User sender = service.userselectone(chatlist.get(i).getMessagesender()); // 해당 메세지마다 전송자 객체 조회
			chatlist.get(i).setUser(sender); // 채팅내역 객체에 전송자 정보 저장
		}
		
		List<Chatroom> chatroomlist = chatroom(session); // ㅊㄱ
		model.addAttribute("proflieurl", user.getProfileurl1());// ㅊㄱ
	    model.addAttribute("chatlist", chatroomlist); // ㅊㄱ
	    
		User partner = new User(); // 상대방 정보를 가져올 빈 객체 생성
		if(cr.getId().equals(user.getId())) partner = service.userselectone(cr.getGoodid()); // 내가 아닌 다른 id가 상대방id이므로 
		if(cr.getGoodid().equals(user.getId())) partner = service.userselectone(cr.getId()); // 상대방 id로 상대방 정보 조회
		
		// 상대방의 관심사 이름을 문자열배열로 저장. 대충 결과값이 관심사이름 or null로 나옴
		String[] intname = {partner.getInterestname1(), partner.getInterestname2(), partner.getInterestname3(), partner.getInterestname4(), partner.getInterestname5(), partner.getInterestname6()};
		
		// 관심사 최대 갯수만큼 반복문 돌려서
		for(int i = 0; i < 6; i++) {
			if(intname[i] != null) { // i+1번째 관심사가 null이아니면
				Interest in = service.selectinterest(intname[i]); // 해당 관심사 이름으로 관심사 정보조회해서 객체에 정보를 넣음
				intlist.add(in); // 관심사 객체로 이루어진 list에 추가
			}
			else break; // null이면 반복문 종료
		}
		
		model.addAttribute("partner", partner); // 상대방 정보 뷰로 전송
		model.addAttribute("postchat", chatlist); // 채팅내역 뷰로 전송
		model.addAttribute("userid", user.getId());
		model.addAttribute("interestlist", intlist); // 관심사 정보 뷰로 전송
		
		return null;
	}
	
	private List<Chatroom> chatroom(HttpSession session){
		User u = (User)session.getAttribute("loginUser");
		List<Chatroom> chatlist = service.roomlist(u.getId());
		for(int i = 0; i < chatlist.size(); i++) {
			String pi = "";
			if(chatlist.get(i).getId().equals(u.getId())) pi = chatlist.get(i).getGoodid();
			if(chatlist.get(i).getGoodid().equals(u.getId())) pi = chatlist.get(i).getId();
			User p = service.userselectone(pi);
			chatlist.get(i).setUser(p);
		}
		return chatlist;
	}
}

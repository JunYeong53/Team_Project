package controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import exception.LoginException;
import exception.UserException;
import logic.Buy;
import logic.Cash;
import logic.Chatroom;
import logic.Picture;
import logic.ShopService;
import logic.User;

@Controller
@RequestMapping("user")
public class UserController {

	@Autowired
	private ShopService service;

	private List<Chatroom> chatroom(HttpSession session) {
		User u = (User) session.getAttribute("loginUser");
		List<Chatroom> chatlist = service.roomlist(u.getId());
		for (int i = 0; i < chatlist.size(); i++) {
			String pi = "";
			if (chatlist.get(i).getId().equals(u.getId()))
				pi = chatlist.get(i).getGoodid();
			if (chatlist.get(i).getGoodid().equals(u.getId()))
				pi = chatlist.get(i).getId();
			User p = service.userselectone(pi);
			chatlist.get(i).setUser(p);
		}
		return chatlist;
	}

	@RequestMapping("usersearch")
	public ModelAndView usersearch(HttpServletRequest request, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		List<Chatroom> chatlist = chatroom(session);
		mav.addObject("chatlist", chatlist);
		int agehigh = 99;
		int agelow = 0;
		User user = (User) session.getAttribute("loginUser");

		String gender = user.getGender();

		try {
			if (request.getParameter("filtercheck").equals("2")) {
				String address = request.getParameter("address");
				String ageh = request.getParameter("agehigh");
				String agel = request.getParameter("agelow");
				String height = request.getParameter("height");
				String body = request.getParameter("body");
				String education = request.getParameter("education");
				String pay = request.getParameter("pay");

				if (address.length() == 0) {
					address = null;
				}
				if (ageh.length() == 0) {
					ageh = "99";
				}
				if (agel.length() == 0) {
					agel = "1";
				}
				if (height.length() == 0) {
					height = null;
				}
				if (body.length() == 0) {
					body = null;
				}
				if (education.length() == 0) {
					education = null;
				}
				if (pay.length() == 0) {
					pay = null;
				}

				System.out.println(gender + address + ageh + agel + height + body + education + pay);
				List<User> filteruserlist = service.filteruserlist(gender, address, ageh, agel, height, body, education,
						pay);
				System.out.println(filteruserlist);
				mav.addObject("userlist", filteruserlist);
				mav.addObject("profileurl", user.getProfileurl1());
				return mav;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		if (user.getAgehigh().equals("상관없음")) {
		} else {
			agehigh = Integer.parseInt(user.getAgehigh());
		}
		if (user.getAgelow().equals("상관없음")) {
		} else {
			agelow = Integer.parseInt(user.getAgelow());
		}
		List<User> userlist = service.userlist(gender, agehigh, agelow);
		mav.addObject("userlist", userlist);
		mav.addObject("proflieurl", user.getProfileurl1());
		return mav;
	}

	@RequestMapping("history")
	public ModelAndView history(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		List<Chatroom> chatlist = chatroom(session);
		mav.addObject("chatlist", chatlist);
		User user = (User) session.getAttribute("loginUser");
		mav.addObject("proflieurl", user.getProfileurl1());
		String id = user.getId();
		List<User> userlist = service.history(id); // 방문자 호출
		mav.addObject("userlist", userlist);
		return mav;
	}

	@RequestMapping("receive")
	public ModelAndView receive(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		List<Chatroom> chatlist = chatroom(session);
		mav.addObject("chatlist", chatlist);
		User loginUser = (User) session.getAttribute("loginUser");
		mav.addObject("proflieurl", loginUser.getProfileurl1());
		String id = loginUser.getId();
		List<User> user = service.receiveuser(id);
		mav.addObject("list", user);
		return mav;
	}

	@RequestMapping("give")
	public ModelAndView give(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		List<Chatroom> chatlist = chatroom(session);
		mav.addObject("chatlist", chatlist);
		User loginUser = (User) session.getAttribute("loginUser");
		mav.addObject("proflieurl", loginUser.getProfileurl1());
		String id = loginUser.getId();
		List<User> user = service.giveuser(id);
		mav.addObject("userlist", user);
		return mav;
	}

	@GetMapping("mypage")
	public ModelAndView mypage(String id, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		List<Chatroom> chatlist = chatroom(session);
		mav.addObject("chatlist", chatlist);
		User user = service.userselectone(id);
		mav.addObject("proflieurl", user.getProfileurl1());
		mav.addObject("user", user);
		return mav;
	}

	@PostMapping("mypage")
	public ModelAndView mypage2(User user, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		List<Chatroom> chatlist = chatroom(session);
		mav.addObject("chatlist", chatlist);
		User loginuser = (User) session.getAttribute("loginUser");
		if (!user.getGreeting().equals(""))
			loginuser.setGreeting(user.getGreeting());
		if (user.getBody() != null)
			loginuser.setBody(user.getBody());
		if (user.getAddress() != null)
			loginuser.setAddress(user.getAddress());
		if (user.getPay() != null)
			loginuser.setPay(user.getPay());
		if (!user.getPhone().equals(""))
			loginuser.setPhone(user.getPhone());
		if (user.getEducation() != null)
			loginuser.setEducation(user.getEducation());
		System.out.println("마이페이지에서 남어온 유저============" + user);
		System.out.println("로그인 유저======================" + loginuser);
		service.userupdate(loginuser);
		mav.setViewName("redirect:mypage.shop?id=" + loginuser.getId());
		mav.addObject("loginuser", loginuser);
		System.out.println("post");
		return mav;
	}

	@GetMapping("password")
	public ModelAndView checkpassword(String id, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		User user = (User) session.getAttribute("loginUser");
		mav.addObject("user", user);
		return mav;
	}

	// text/plain : 문자열로 인식하게 된다.
	@PostMapping(value = "password", produces = "text/html;charset=UTF-8")
	@ResponseBody // return 데이터 자체를 view의 내용으로 전달
	public String checkpassword3(String pass, String chgpass, HttpSession session) {
		User login = (User) session.getAttribute("loginUser");
		if (!login.getPassword().equals(pass)) {
			throw new LoginException("비밀번호 오류", "password.shop");
		}
		// String chgpass=null;
		service.userPassword(login.getId(), chgpass);
		login.setPassword(chgpass);
		return "<script>alert('비밀번호가 변경 되었습니다.')\n" + "self.close()\n" + "</script>";
	}

	@GetMapping("delete")
	public ModelAndView checkview(String id, HttpSession session) throws Exception {
		ModelAndView mav = new ModelAndView();
		User user = (User) session.getAttribute("loginUser");
		mav.addObject("user", user);
		return mav;
	}

	@PostMapping("delete")
	public ModelAndView checkdelete(String id, String password, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		User loginUser = (User) session.getAttribute("loginUser");
		if (!loginUser.getPassword().equals(password)) {
			throw new LoginException("비밀번호가 틀립니다.", "delete.shop?id=" + loginUser.getId());
		}
		try {
			service.userDelete(id);
			if (loginUser.getId().equals("admin")) {
				mav.setViewName("redirect:/admin/list.shop");
			} else {
				session.invalidate();
				mav.addObject("msg", loginUser.getId() + "님. 안녕히 가세요.");
				mav.setViewName("opdelete");
			}
		} catch (Exception e) {
			e.printStackTrace();
			throw new LoginException("회원 탈퇴시 서버 오류가 발생했습니다. 전산부 연락 요망", "delete.shop?" + loginUser.getId());
		}
		return mav;
	}

	@GetMapping("cash")
	public ModelAndView cashview(String id, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		User loginUser = (User) session.getAttribute("loginUser");
		User user = service.userselectone(id);
		if (!loginUser.getId().equals(user.getId()))
			throw new UserException("해당 권한이 없습니다.", "mypage.shop");
		List<Chatroom> chatlist = chatroom(session);
		mav.addObject("chatlist", chatlist);
		mav.addObject("proflieurl", user.getProfileurl1());
		List<Cash> cash1 = service.cashlist1();
		List<Cash> cash2 = service.cashlist2();
		mav.addObject("cashuser", user);
		mav.addObject("cash1", cash1);
		mav.addObject("cash2", cash2);
		return mav;
	}

	@GetMapping("cashcheck")
	public ModelAndView cashcheck(String id, Integer cnt, Integer price, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		List<Chatroom> chatlist = chatroom(session);
		User loginuser = (User) session.getAttribute("loginUser");
		User user = service.userselectone(id);
		if (!loginuser.getId().equals(user.getId()))
			throw new UserException("해당 권한이 없습니다.", "mypage.shop");
		mav.addObject("proflieurl", loginuser.getProfileurl1());
		mav.addObject("chatlist", chatlist);
		mav.addObject("id", id);
		mav.addObject("cnt", cnt);
		mav.addObject("price", price);
		return mav;
	}

	@PostMapping("cashcheck")
	public ModelAndView cashcomp(String id, Integer cnt, Integer price) {
		ModelAndView mav = new ModelAndView();
		service.addgoodcnt(id, cnt, price);
		Buy buy = new Buy();
		buy.setId(id);
		buy.setBuyprice(price);
		buy.setBuycnt(cnt);
		service.addbuylist(buy);

		mav.addObject("id", id);
		mav.addObject("cnt", cnt);
		mav.addObject("price", price);
		mav.setViewName("redirect:/user/cashsuccess.shop");
		return mav;
	}

	@RequestMapping("cashsuccess")
	public ModelAndView cashsuccess(String id, Integer cnt, Integer price, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		User u = service.userselectone(id);
		User loginUser = (User) session.getAttribute("loginUser");
		if (!loginUser.getId().equals(u.getId()))
			throw new UserException("해당 권한이 없습니다.", "mypage.shop");
		List<Chatroom> chatlist = chatroom(session);
		mav.addObject("chatlist", chatlist);
		mav.addObject("proflieurl", u.getProfileurl1());
		mav.addObject("id", u.getId());
		mav.addObject("buycnt", cnt);
		mav.addObject("price", price);
		mav.addObject("cnt", u.getGoodcnt());
		return mav;
	}

	@RequestMapping("buy")
	public ModelAndView buy(String id, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		User loginUser = (User) session.getAttribute("loginUser");
		User u = service.userselectone(id);
		if (!loginUser.getId().equals(u.getId()))
			throw new UserException("해당 권한이 없습니다.", "mypage.shop?id=" + loginUser.getId());
		if (loginUser.getId().equals("admin")) {
			List<Buy> buylist = service.allbuylist();
			mav.addObject("buylist", buylist);
		} else {
			List<Buy> buylist = service.selectbuylist(id);
			mav.addObject("buylist", buylist);
		}
		mav.addObject("proflieurl", loginUser.getProfileurl1());
		List<Chatroom> chatlist = chatroom(session);
		mav.addObject("chatlist", chatlist);
		return mav;
	}
	// ==========================================================

	@GetMapping("imgup")
	public ModelAndView imgup() {
		ModelAndView mav = new ModelAndView();
		mav.addObject(new Picture());
		System.out.println("Get imgup");
		return mav;
	}

	@PostMapping("imgup")
	public ModelAndView imgup2(Picture picture, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		service.uploadprofile(picture.getFile2(), request);
		System.out.println("Post imgup");
		picture.setPictureurl2(picture.getFile2().getOriginalFilename());
		mav.addObject("picture", picture);
		mav.setViewName("imgplus");
		return mav;
	}

	@GetMapping("imgup2")
	public ModelAndView imgup3() {
		ModelAndView mav = new ModelAndView();
		mav.addObject(new Picture());
		System.out.println("Get imgup2");
		return mav;
	}

	@PostMapping("imgup2")
	public ModelAndView imgup_2(Picture picture, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		System.out.println("Post imgup2");
		service.uploadprofile(picture.getFile3(), request);
		picture.setPictureurl3(picture.getFile3().getOriginalFilename());
		mav.addObject("picture", picture);
		mav.setViewName("imgplus");
		return mav;
	}

	@GetMapping("imgup3")
	public ModelAndView imgup5() {
		ModelAndView mav = new ModelAndView();
		mav.addObject(new Picture());
		System.out.println("Get imgup");
		return mav;
	}

	@PostMapping("imgup3")
	public ModelAndView imgup4(Picture picture, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		service.uploadprofile(picture.getFile1(), request);
		System.out.println("Post imgup");
		picture.setPictureurl(picture.getFile1().getOriginalFilename());
		mav.addObject("picture", picture);
		mav.setViewName("imgplus");
		return mav;
	}

	@PostMapping("imgupload")
	public ModelAndView imgupload2(String profileurl1, String profileurl2, String profileurl3, HttpSession session,
			String check) {
		ModelAndView mav = new ModelAndView();
		System.out.println("Post imgupload");
		User user = (User) session.getAttribute("loginUser");
		// User imguser2 = (User)session.getAttribute("loginUser");
		System.out.println(check);
		System.out.println("profileurl1 : " + profileurl1);
		System.out.println("profileurl2 : " + profileurl2);
		System.out.println("profileurl3 : " + profileurl3);
		if (check.equals("1")) {
			user.setProfileurl2(profileurl2);
		} else if (check.equals("2")) {
			user.setProfileurl3(profileurl3);
		} else if (check.equals("3")) {
			user.setProfileurl2(profileurl2);
			user.setProfileurl3(profileurl3);
		} else if (check.equals("4")) {
			user.setProfileurl1(profileurl1);
		} else if (check.equals("5")) {
			user.setProfileurl1(profileurl1);
			user.setProfileurl2(profileurl2);
		} else if (check.equals("6")) {
			user.setProfileurl1(profileurl1);
			user.setProfileurl3(profileurl3);
		} else if (check.equals("7")) {
			user.setProfileurl1(profileurl1);
			user.setProfileurl2(profileurl2);
			user.setProfileurl3(profileurl3);
		}
		service.profileimgupdate(user);
		mav.addObject("user", user);
		mav.setViewName("redirect:../user/mypage.shop");
		return mav;
	}

	@GetMapping("userdelete")
	public ModelAndView userdelete(String reportid, String id) {
		ModelAndView mav = new ModelAndView();
		service.userDelete(id);
		service.reportDelete(reportid, id);
		mav.setViewName("redirect:../board/report.shop");
		return mav;
	}

	@RequestMapping("logout")
	public ModelAndView logout(HttpSession session, HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView();
		User u = (User) session.getAttribute("loginUser");
		Cookie[] cookies = request.getCookies();
		for (int i = 0; i < cookies.length; i++) {
			if (cookies[i].getName().equals(u.getId())) {
				cookies[i].setPath("/");
				cookies[i].setMaxAge(0);
				response.addCookie(cookies[i]);
			}
		}
		session.invalidate();
		mav.setViewName("redirect:../login/login.shop");
		return mav;
	}
}
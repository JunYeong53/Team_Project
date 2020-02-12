package logic;

import java.io.File;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import dao.BoardDao;
import dao.BuyDao;
import dao.CashDao;
import dao.ChatroomDao;
import dao.CommentDao;
import dao.GoodDao;
import dao.InterestDao;
import dao.MessageDao;
import dao.PromiseDao;
import dao.ReportDao;
import dao.UserDao;

@Service // @Component + service ±â´É
public class ShopService {

	@Autowired
	private UserDao userDao;
	@Autowired
	private BoardDao boardDao;
	@Autowired
	private ChatroomDao chatroomDao;
	@Autowired
	private MessageDao messageDao;
	@Autowired
	private CommentDao commentDao;
	@Autowired
	private InterestDao interestDao;
	@Autowired
	private ReportDao reportDao;
	@Autowired
	private PromiseDao promiseDao;
	@Autowired
	private GoodDao goodDao;
	@Autowired
	private CashDao cashDao;
	@Autowired
	private BuyDao buyDao;

	public void uploadprofile(MultipartFile file1, HttpServletRequest request) {
		String orgFile = file1.getOriginalFilename();
		String uploadPath = request.getServletContext().getRealPath("/") + "login/img/";
		File f = new File(uploadPath);
		System.out.println("uploadprofile");
		if (!f.exists())
			f.mkdirs();
		try {
			file1.transferTo(new File(uploadPath + orgFile));
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void userupdate(User user) {
		userDao.userupdate(user);
	}

	public void userjoin(User user) {
		userDao.join(user);
	}

	public User userselectone(String id) {
		return userDao.userselectone(id);
	}

	public List<Board> noboardlist() {
		return boardDao.noboardlist();
	}

	public List<Board> suboardlist(Integer pageNum, int limit) {
		return boardDao.suboardlist(pageNum, limit);
	}

	public void noticewrite(String boardsubject, String boardcontent) {
		boardDao.noticewrite(boardsubject, boardcontent);
	}

	public int suboardcount() {
		return boardDao.suboardcount();
	}

	public Board boarddetail(Integer boardnum) {
		return boardDao.boarddetail(boardnum);
	}

	public int reboardcount(int review) {
		return boardDao.reboardcount(review);

	}

	public List<Board> reboardlist(Integer pageNum, int limit) {
		return boardDao.reboardlist(pageNum, limit);
	}

	public List<Board> ajaxreboardlist(Integer pageNum, int limit, int review) {
		return boardDao.ajaxreboardlist(pageNum, limit, review);
	}

	public List<Chatroom> roomlist(String id) {
		return chatroomDao.roomlist(id);
	}

	public int msgmaxnum() {
		return messageDao.maxnum();
	}

	public void insertmsg(Message msg) {
		messageDao.insertmsg(msg);
	}

	public List<Message> chatlist(Integer chatnum) {
		return messageDao.chatlist(chatnum);
	}

	public Interest selectinterest(String intname) {
		return interestDao.selectinterest(intname);
	}

	public Chatroom selectchat(int chatnum) {
		return chatroomDao.selectchat(chatnum);
	}

	public List<User> userlist(String gender, int agehigh, int agelow) {
		return userDao.userlist(gender, agehigh, agelow);
	}

	public void suboardinsert(String boardid, String boardsubject, String boardcontent) {
		boardDao.suboardinsert(boardid, boardsubject, boardcontent);

	}

	public List<Board> mysuboardlist(String id) {
		return boardDao.mysuboardlist(id);
	}

	public void commentwrite(Comment comment) {
		commentDao.write(comment);

	}

	public Comment commentdetail(Integer boardnum) {
		return commentDao.detail(boardnum);
	}

	public void boardacceptup(Integer boardnum) {
		boardDao.acceptup(boardnum);

	}

	public void reboardwrite(Board board) {
		boardDao.reboardwrite(board);
	}

	public List<Interest> interestlist() {
		return interestDao.interestlist();
	}

	public void reportsubmit(Report report) {
		reportDao.submit(report);
	}

	public boolean reportselect(String id, String reportid) {
		return reportDao.select(id, reportid);
	}

	public void promiseinsert(Promise promise) {
		promiseDao.insert(promise);
	}

	public boolean promiseselect(String id, String goodid) {
		return promiseDao.select(id, goodid);
	}

	public List<Promise> promiselist(String id) {
		return promiseDao.list(id);
	}

	public Promise promisedetail(Integer promisenum) {
		return promiseDao.detail(promisenum);
	}

	public List<User> interestuserlist(String interestname, String gender) {
		return userDao.interestuserlist(interestname, gender);
	}

	public List<User> giveuser(String id) {
		return goodDao.gooduser(id);
	}

	public List<User> receiveuser(String id) {
		return goodDao.receiveuser(id);
	}

	public int reqinsert(String myid, String id) {
		return goodDao.reqinsert(myid, id);
	}

	public int reqdelete(String myid, String id) {
		return goodDao.reqdelete(myid, id);
	}

	public int reqdelete2(String myid, String id) {
		return goodDao.reqdelete2(myid, id);
	}

	public String goodcheck(String myid, String id) {
		return goodDao.goodcheck(myid, id);
	}

	public String goodcheck2(String myid, String id) {
		return goodDao.goodcheck2(myid, id);
	}

	public List<User> history(String id) {
		return userDao.history(id);
	}

	public void historyinsert(String id, String userid) {
		userDao.historyinsert(id, userid);
	}

	public String giveuserone(String id, String userid) {
		return goodDao.giveuserone(id, userid);
	}

	public void goodinsert(String myid, String id) {
		goodDao.goodinsert(myid, id);
	}

	public void gooddelete(String myid, String id) {
		goodDao.gooddelete(myid, id);
	}

	public String goodcheck3(String id, String userid) {
		return goodDao.givecheck3(id, userid);
	}

	public void chatroomcreate(Chatroom cr) {
		chatroomDao.create(cr);
	}

	public List<Cash> cashlist1() {
		return cashDao.cashlist1();
	}

	public List<Cash> cashlist2() {
		return cashDao.cashlist2();
	}

	public void addgoodcnt(String id, Integer cnt, Integer price) {
		userDao.addgoodcnt(id, cnt, price);
	}

	public void addbuylist(Buy buy) {
		buyDao.addbuylist(buy);
	}

	public List<Buy> selectbuylist(String id) {
		return buyDao.selectbuylist(id);
	}

	public void userDelete(String id) {
		userDao.userdelete(id);
	}

	public void profileimgupdate(User user) {
		userDao.profileimgupdate(user);
	}

	public void deletechatroom(int chatnum) {
		chatroomDao.deleteroom(chatnum);
	}

	public int validid(String idcheck) {
		return userDao.validid(idcheck);
	}

	public int validnick(String nickcheck) {
		return userDao.validnick(nickcheck);
	}

	public void disgoodcnt(String myid) {
		userDao.disgoodcnt(myid);
	}

	public void incgoodcnt(String myid) {
		userDao.incgoodcnt(myid);
	}

	public Chatroom selectchat2(String myid, String id) {
		return chatroomDao.selectchat2(myid, id);
	}

	public List<Board> review5() {
		return boardDao.review5();
	}

	public List<User> adlist() {
		return userDao.adlist();
	}

	public void insertreport(String reportid, String id, String reportcolumn, String reportcontent) {
		reportDao.insertreport(reportid, id, reportcolumn, reportcontent);
	}

	public void reportDelete(String reportid, String id) {
		reportDao.reportdelete(reportid, id);

	}

	public String useridsearch(String email) {
		return userDao.useridsearch(email);
	}

	public String userpwsearch(String id, String email) {
		return userDao.userpwsearch(id, email);
	}

	public List<User> filteruserlist(String gender, String address, String ageh, String agel, String height,
			String body, String education, String pay) {
		return userDao.filteruserlist(gender, address, ageh, agel, height, body, education, pay);
	}

	public void promiseaccept(String goodid, String id) {
		promiseDao.accept(goodid, id);
	}

	public void promisedelete(String goodid, String id) {
		promiseDao.delete(goodid, id);
	}

	public List<Promise> mypromiselist(String id) {
		return promiseDao.mypromiselist(id);
	}

	public List<Report> reportlist() {
		return reportDao.reportlist();
	}

	public List<Buy> allbuylist() {
		return buyDao.allbuylist();
	}

	public void userPassword(String id, String chgpass) {
		userDao.userPassword(id, chgpass);

	}

	public boolean check(Integer boardnum) {
		return commentDao.commentcheck(boardnum);
	}
}
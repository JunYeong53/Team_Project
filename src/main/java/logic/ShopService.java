package logic;

import java.io.File;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import dao.BoardDao;
import dao.UserDao;

@Service // @Component + service 기능
public class ShopService {
	
	@Autowired
	private UserDao userDao;
	@Autowired
	private BoardDao boardDao;	
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
	public int reboardcount() {
		return boardDao.reboardcount();
		
	}
	public List<Board> reboardlist(Integer pageNum, int limit) {
		return boardDao.reboardlist(pageNum, limit);
	}	
}

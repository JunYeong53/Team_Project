package logic;

import java.io.File;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import dao.GoodDao;
import dao.InterestDao;
import dao.UserDao;

@Service // @Component + service 기능
public class ShopService {
	
	@Autowired
	private UserDao userDao;
	@Autowired
	private GoodDao goodDao;
	@Autowired
	private InterestDao interestdao;

	public Interest interest() {
		return interestdao.interest();
	}

	public User select() {
		return userDao.select();
	}

	public int interestcount() {
		return userDao.interestcount();
	}

	public List<Good> giveuser(String id) {
		return goodDao.gooduser(id);
	}

	public User giveselect(List<Good> giveuser) {
		return goodDao.goodselect(giveuser);
	}

}

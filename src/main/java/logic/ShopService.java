package logic;

import java.io.File;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import dao.UserDao;

@Service // @Component + service 기능
public class ShopService {
	
	@Autowired
	private UserDao userDao;

}

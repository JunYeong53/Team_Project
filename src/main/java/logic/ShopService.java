package logic;

import java.io.File;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import dao.UserDao;

@Service // @Component + service
public class ShopService {
	
	@Autowired
	private UserDao userDao;

	public void uploadprofile(MultipartFile file1, HttpServletRequest request) {
		String orgFile = file1.getOriginalFilename();
		String uploadPath = request.getServletContext().getRealPath("/") + "login/img/";
		File f = new File(uploadPath);
		if(!f.exists()) f.mkdirs();
		try {
			file1.transferTo(new File(uploadPath + orgFile));
			System.out.println(uploadPath + orgFile);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

	public void userjoin(User user) {
		userDao.join(user);
		
	}

}

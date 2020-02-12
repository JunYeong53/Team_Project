package dao.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import logic.Cash;

public interface CashMapper {

	@Select("select * from cash where cashcnt = 10 or cashcnt = 20 or cashcnt = 30")
	List<Cash> list1();
	
	@Select("select * from cash where cashcnt = 40 or cashcnt = 50 or cashcnt = 100")
	List<Cash> list2();

}

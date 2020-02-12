package dao.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import logic.Buy;

public interface BuyMapper {

	@Insert("insert into buy (id, buyprice, buyday, buycnt) values (#{id}, #{buyprice}, now(), #{buycnt})")
	void addbuylist(Buy buy);

	@Select("select * from buy where id = #{id}")
	List<Buy> selectbuylist(String id);

	@Select("select * from buy order by buynum desc")
	List<Buy> allbuylist();

}

package dao.mapper;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Update;

import logic.User;

public interface UserMapper {

	@Insert("insert into user (memberid, password, name, regdate, tel, membergrade, recognizecode, image, locking, createpf) values (#{memberid},#{password},#{name},CURDATE(),#{tel},#{membergrade},#{recognizecode},#{imageUrl},#{locking},#{createpf})")
	void normalInsert(User user);
	
	@Insert("insert into user (memberid, password, name, regdate, tel, membergrade, birth, companyserial, image, locking, industy, site, address) values (#{memberid},#{password},#{name},CURDATE(),#{tel},#{membergrade},#{birth},#{companyserial},#{imageUrl},#{locking},#{industy}, #{site}, #{address})")
	void companyInsert(User user);

	@Update("update user set name=#{name}, modifydate=now(), image=#{imageUrl}, tel=#{tel}, birth=#{birth}, companyserial=#{companyserial}, industy=#{industy}, site=#{site}, address=#{address} where memberid=#{memberid}")
	void userUpdate(User user);

	@Delete("delete from user where memberid=#{value}")
	void userDelete(String id);

	@Update("update user set locking=1, recognizecode=null where memberid=#{memberid} and recognizecode=#{recognizecode}")
	void confirmCode(User user);

	@Update("update user set recognizecode=#{recognizecode} where memberid=#{memberid}")
	void updateRecognize(User user);

	@Update("update user set password=#{password} where memberid=#{memberid}")
	void repassword(User user);

	@Update("update user set locking=1, recognizecode=null where memberid=#{id}")
	void confirmuser(String id);
}

package com.vecheer.dao;

import com.vecheer.domain.User;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

/**
 * 网站用户信息dao
 */
@Repository
public interface IUserDao {
    //按用户名查找用户
    @Select("select * from user where uname=#{unmae}")
    public User findByName(String uname);

    //保存新用户（注册）
    @Insert("insert into user(uname,upassword,uphonenum,urole)values(#{uname},#{upassword},#{uphonenum},#{urole})")
    public void saveUser(User user);



}

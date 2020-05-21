package com.vecheer.service;


import com.vecheer.domain.User;

/**
 * 网站用户信息service
 */
public interface IUserService {
    //验证用户名和密码是否正确,如果正确，就返回这个user的个人信息，如果错误，就返回null
    public User logCheck(String uname,String upassword);

    //按名称查找用户，验证用户名的可用性
    public boolean isNameAvailable(String uname);

    //注册保存新用户
    public void saveUser(User user);
}

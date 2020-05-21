package com.vecheer.service.impl;

import com.vecheer.dao.IUserDao;
import com.vecheer.domain.User;
import com.vecheer.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 网站用户信息serviceImpl
 */
@Service("userService")
public class IUserServiceImpl implements IUserService {

    @Autowired
    IUserDao userDao;

    //验证用户名和密码是否正确
    @Override
    public User logCheck(String uname,String upassword) {
        User user = userDao.findByName(uname);
        if (user==null || !user.getUpassword().equals(upassword))
            return null;
        return user;
    }


    //验证用户名是否可用
    @Override
    public boolean isNameAvailable(String uname) {
        if (userDao.findByName(uname)!=null)
            return false; //此用户名不可用，已经有人用了
        return true;
    }

    @Override
    public void saveUser(User user) {
        userDao.saveUser(user);
    }
}

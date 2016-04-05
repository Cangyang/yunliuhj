package com.cn.yunliuhj.service.impl;

import com.cn.yunliuhj.pojo.User;
import com.cn.yunliuhj.service.IUserService;
import com.cn.yunliuhj.dao.UserDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


/**
 * Created by Administrator on 2016/3/8 0008.
 */
@Service
@Transactional
public class UserService implements IUserService{

    /**
     *
     */
    @Autowired
    private UserDao userDao;

    @Override
    public void add(User user) {
        userDao.add(user);
    }

    @Override
    public List<User> findAll() {
        return userDao.findAllUser();
    }

    @Override
    public boolean update(String xuhao) {
        return userDao.update(xuhao);
    }

    @Override
    public boolean delete(String xuhao) {
        return userDao.delete(xuhao);
    }
}

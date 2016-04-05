package com.cn.yunliuhj.service;
import com.cn.yunliuhj.pojo.User;

import java.util.List;

/**
 * Created by Administrator on 2016/3/8 0008.
 */
public interface IUserService {
    void add(User user);
    List<User> findAll();
    boolean update(String xuhao);
    boolean delete(String xuhao);
}

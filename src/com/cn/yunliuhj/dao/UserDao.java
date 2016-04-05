package com.cn.yunliuhj.dao;
import com.cn.yunliuhj.pojo.User;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * Created by Administrator on 2016/3/8 0008.
 * http://blog.csdn.net/tonytfjing/article/details/39203121
 */

public interface UserDao {
    void add(User user);
    boolean update(String xuhao);
    List<User> findAllUser();
    boolean delete(String xuhao);
}

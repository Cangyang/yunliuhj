package com.cn.yunliuhj.service;

import com.cn.yunliuhj.pojo.Account;

import java.util.List;

/**
 * Created by Administrator on 2016/3/28 0028.
 */
public interface IAccountService {
    //验证用户登录
    String validateAccount(Account account);
    //用户注册
    String register(Account account);
    //账户信息查询
    List<Account> infoQuery(Account account);
    //账户信息更新
    boolean infoUodate(Account account);
    //账户删除
    boolean accDelete(int id);

}

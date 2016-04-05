package com.cn.yunliuhj.service.impl;

import com.cn.yunliuhj.dao.AccountDao;
import com.cn.yunliuhj.pojo.Account;
import com.cn.yunliuhj.service.IAccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Administrator on 2016/3/28 0028.
 */
@Service
@Transactional
public class AccountService implements IAccountService{

    @Autowired //自动装配
    private AccountDao accountDao;

    @Override
    public String validateAccount(Account account) {
        String result = "success";
        Account acc = new Account();
        boolean flag = false;
        acc = accountDao.queryByLoginName(account.getLoginName());
        //判断登陆账号是否存在
        if(null == acc||"".equals(acc)){
            result = "该账号不存在！";
            return result;
        }
        //判断密码是否正确
        else if(!acc.getAccountPwd().equals(account.getAccountPwd())){
            result = "密码不正确，请重试！";
            return result;
        }
        return result;
    }

    @Override
    public String register(Account account) {
        String result = "";
        //判断登陆账号是否已存在
        String loginName = accountDao.queryByLoginName(account.getLoginName()).getLoginName();
        if(null != loginName && !"".equals(loginName)){
            result = "该账号已存在！";
            return result;
        }
        //账户注册
        else{
            if(accountDao.add(account)){
                result = "success";
            }else {
                result = "注册失败！";
                return result;
            }
        }
        return result;
    }

    @Override
    public List<Account> infoQuery(Account account) {

        return accountDao.query(account);
    }

    @Override
    public boolean infoUodate(Account account) {
        return accountDao.update(account);
    }

    @Override
    public boolean accDelete(int id) {
        return accountDao.delete(id);
    }
}

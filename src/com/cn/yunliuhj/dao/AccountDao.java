package com.cn.yunliuhj.dao;

import com.cn.yunliuhj.pojo.Account;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by Administrator on 2016/3/23 0023.
 */
public interface AccountDao {
    //添加账户
    boolean add(Account account);
    //更新账户
    boolean update(Account account);
    //根据登陆名查询账户
    Account queryByLoginName(@Param("loginName") String loginName);
    //根据主键编号查询账号
    Account queryById(@Param("id") int id);
    //根据账号其他信息查询账号
    List<Account> query(Account account);
    //删除账户
    boolean delete(@Param("id") int id);
}

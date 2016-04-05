package com.cn.yunliuhj.controller;

import com.cn.yunliuhj.pojo.Account;
import com.cn.yunliuhj.service.impl.AccountService;
import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by Administrator on 2016/4/1 0001.
 */
@Controller
public class Login {
    //定义日志
    private final static Logger logger = org.slf4j.LoggerFactory.getLogger(test.class);
    @Autowired
    private AccountService accountService;
    //用户登陆
    @RequestMapping("/login")
    public ModelAndView login(Account account, HttpServletRequest request, HttpServletResponse response){
        ModelAndView view = new ModelAndView("/index");
        String flag = accountService.validateAccount(account);
        if("success".equals(flag)){
            view.addObject(account);
            view.setViewName("redirect:/main");
        }
        view.addObject("message",flag);
        return view;
    }
    //登陆主页面
    @RequestMapping("/main")
    public ModelAndView main(HttpServletRequest request, HttpServletResponse response){
        ModelAndView view = new ModelAndView("/home");


        return view;
    }
}

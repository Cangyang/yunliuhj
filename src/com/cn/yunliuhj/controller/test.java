package com.cn.yunliuhj.controller;

import com.alibaba.druid.support.logging.Log;
import com.alibaba.druid.support.logging.LogFactory;
import com.cn.yunliuhj.pojo.User;
import com.cn.yunliuhj.service.impl.UserService;
import com.cn.yunliuhj.util.MD5Util;
import org.apache.log4j.LogManager;

import org.apache.log4j.spi.LoggerFactory;
import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

/**
 * Created by Administrator on 2016/3/17 0017.
 */
@Controller
public class test {
    //定义日志
    private final static Logger logger = org.slf4j.LoggerFactory.getLogger(test.class);
    @Autowired
    private UserService userService;
    /**
     * 返回首页
     */
    @RequestMapping("/test")
    public String home(){
        logger.debug("测试页面");
        String test = MD5Util.MD5("123456");
        System.out.print(test);
        return "/WEIXIN/test";
    }
    /**
     * 获取所有用户列表
     */
    @RequestMapping("/home")
    public String getAllUser(HttpServletRequest request){
        List<User> allUsers = userService.findAll();
        request.setAttribute("userList",allUsers);
        return "/home";
    }
    /**
     * 添加用户界面
     */
    @RequestMapping("toAddUser")
    public String toAddUser(){
        return "/addUser";
    }
    /**
     * 添加用户
     */
    @RequestMapping("/addUser")
    public String addUser(User user,HttpServletRequest request){
        String xuhao = MD5Util.MD5(user.getUserName());
        user.setXuhao(xuhao);
        userService.add(user);
        return "redirect:home";
    }
    /**
     * 删除用户
     */
    @RequestMapping("/delUser")
    public void toDelUser(String id, HttpServletRequest request, HttpServletResponse response){
        String result = "{\"result\":\"error\"}";
        if(userService.delete(id)){
            result = "{\"result\":\"success\"}";
        }
        response.setContentType("application/json");
        try{
            PrintWriter writer = response.getWriter();
            writer.write(result);
        } catch (IOException e){
            logger.error("json输出异常！");
        }
    }

    /**
     * 编辑用户
     */
    @RequestMapping("editUser")
    public String toEditUser(User user,HttpServletRequest request){
        if(userService.update(user.getXuhao())){
            return "redirect:home";
        }
        return "/error";
    }

}

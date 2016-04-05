package com.cn.yunliuhj.pojo;

import java.util.Date;

/**
 * Created by Administrator on 2016/3/22 0022.
 * 账户信息
 */
public class Account {
    //主键编号
    private int id;
    //登陆名称
    private String loginName;
    //账户密码
    private String accountPwd;
    //微信名称
    private String weiXinName;
    //微信openId
    private String openId;
    //用户昵称
    private String accountName;
    //联系电话
    private String phone;
    //性别
    private int sex;
    //组编号
    private int groupId;
    //账号类型
    private int accountType;
    //上次登陆时间
    private Date lastTime;
    //是否初始密码
    private int isChuShiMiMa;
    //账号状态
    private int isDisabled;
    //用户头像
    private String userPic;
    //注册时间
    private Date registrationTime;
    //操作时间
    private Date operatorDate;
    //操作人ID
    private String operatorId;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getLoginName() {
        return loginName;
    }

    public void setLoginName(String loginName) {
        this.loginName = loginName;
    }

    public String getAccountPwd() {
        return accountPwd;
    }

    public void setAccountPwd(String accountPwd) {
        this.accountPwd = accountPwd;
    }

    public String getWeiXinName() {
        return weiXinName;
    }

    public void setWeiXinName(String weiXinName) {
        this.weiXinName = weiXinName;
    }

    public String getOpenId() {
        return openId;
    }

    public void setOpenId(String openId) {
        this.openId = openId;
    }

    public String getAccountName() {
        return accountName;
    }

    public void setAccountName(String accountName) {
        this.accountName = accountName;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public int getSex() {
        return sex;
    }

    public void setSex(int sex) {
        this.sex = sex;
    }

    public int getGroupId() {
        return groupId;
    }

    public void setGroupId(int groupId) {
        this.groupId = groupId;
    }

    public int getAccountType() {
        return accountType;
    }

    public void setAccountType(int accountType) {
        this.accountType = accountType;
    }

    public Date getLastTime() {
        return lastTime;
    }

    public void setLastTime(Date lastTime) {
        this.lastTime = lastTime;
    }

    public int getIsChuShiMiMa() {
        return isChuShiMiMa;
    }

    public void setIsChuShiMiMa(int isChuShiMiMa) {
        this.isChuShiMiMa = isChuShiMiMa;
    }

    public int getIsDisabled() {
        return isDisabled;
    }

    public void setIsDisabled(int isDisabled) {
        this.isDisabled = isDisabled;
    }

    public String getUserPic() {
        return userPic;
    }

    public void setUserPic(String userPic) {
        this.userPic = userPic;
    }

    public Date getRegistrationTime() {
        return registrationTime;
    }

    public void setRegistrationTime(Date registrationTime) {
        this.registrationTime = registrationTime;
    }

    public Date getOperatorDate() {
        return operatorDate;
    }

    public void setOperatorDate(Date operatorDate) {
        this.operatorDate = operatorDate;
    }

    public String getOperatorId() {
        return operatorId;
    }

    public void setOperatorId(String operatorId) {
        this.operatorId = operatorId;
    }
}

package come.poyu.dao;

import come.poyu.entity.Manager;

public interface ManagerDao
{
    /**
     * 执行登陆的方法
     * @param loginname 用户名
     * @param loginpwd 密码
     * @return 登录用户实体
     */
     int login(String sql, Manager manager);

     int select(String sql, String name);




}

package come.poyu.dao.impl;

import come.poyu.entity.Manager;
import come.poyu.dao.ManagerDao;
import come.poyu.util.JDBCHelper;

import java.util.List;
import java.util.Map;

public class ManagerDaoImpl implements ManagerDao {

    /* String loginname;
     String loginpwd;*/
    @Override
    public int login(String sql,Manager manager) {
        return JDBCHelper.executeUpdate(sql, manager.getManager_name(), manager.getManager_pwd());
    }

    /**
     * 执行查询的方法
     *
     * @param name @return 查询用户实体
     */
    @Override
    public int select(String sql,String name) {
        List list = JDBCHelper.executeQuery(sql, name);
        if (list.toString()=="[]") return 0;
        else return 1;

    }
     public static void main(String args[])
      {
          /*String loginname="1";
          String loginpwd="2";*/
          Manager manager =new Manager();
          String st = manager.setManager_name("sfddsfas");
          String str = manager.setManager_pwd("sdfas");
         List list=JDBCHelper.executeQuery("SELECT * FROM T_MANAGERLOGIN where LOGIN_NAME=?","18845890651");
         if(list.toString()=="[]")
             System.out.println(1);
         else System.out.println(0);
         // System.out.println(String.valueOf(JDBCHelper.executeQuery("select * from t_managerlogin where login_name=?","1")));

         //DBCHelper.executeUpdate("INSERT INTO T_MANAGERLOGIN VALUE(?,?)","offsgfasu","168poyu");*//*
          //System.out.println( JDBCHelper.executeUpdate("INSERT INTO T_MANAGERLOGIN VALUE(?,?)", loginname, loginpwd));
         // ManagerDao managerDao = new ManagerDaoImpl();
          //System.out.println( managerDao.select("18845890651"));
      }

}

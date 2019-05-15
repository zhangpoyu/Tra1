package come.poyu.test;

import come.poyu.dao.ManagerDao;
import come.poyu.dao.impl.ManagerDaoImpl;
import come.poyu.entity.Manager;
import come.poyu.util.JDBCHelper;

public class ServletTest
{
    ManagerDao managerDao = new ManagerDaoImpl();

   /* public  void login(Manager manager)
    {
        managerDao.login(manager);
    }
  public  static  void main(String args[])
  {
      Manager manager  = new Manager();
      manager.setManager_pwd("aew32dsf");
      manager.setManager_name("sfas212332d");
      JDBCHelper.executeUpdate("insert into T_MANAGERLOGIN values(?,?)","ssdt2r","st");
      ServletTest s = new ServletTest();
          s.login(manager);
  }*/

}

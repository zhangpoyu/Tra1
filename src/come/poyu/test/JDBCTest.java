package come.poyu.test;

import come.poyu.dao.UnruleCarDao;
import come.poyu.dao.impl.UnruleCarDaoImpl;
import come.poyu.entity.UnruleCar;
import come.poyu.util.JDBCHelper;
import org.junit.Test;


import java.util.Map;
import java.util.List;


public class JDBCTest
{

    @Test
    public void testQuery()
    {
        List<Map<String, Object>> result;
        result = JDBCHelper.executeQuery("SELECT * from t_car;");
        JDBCHelper.executeUpdate("INSERT INTO T_ROLE VALUE(?, ?, ?)", JDBCHelper.getPKL20(), "adsgfasd","sdfs");
        JDBCHelper.executeUpdate("INSERT INTO T_MANAGERLOGIN VALUE(?,?)", "image/processing","168poyu");
        // System.out.print(result);
        for(Map param : result)
        {
            System.out.println(param);
            //System.out.println("\n");
        }
    }
    public static void  main(String args[])
    {
        UnruleCar unruleCar = new UnruleCar();
        UnruleCarDao unruleCarDao = new UnruleCarDaoImpl();
        System.out.println(unruleCarDao.getAll());
    }

}

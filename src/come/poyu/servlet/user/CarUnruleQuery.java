package come.poyu.servlet.user;

import come.poyu.dao.CarDao;
import come.poyu.dao.UserUnruleInfo;
import come.poyu.dao.impl.CarDaoImpl;
import come.poyu.entity.Car;
import come.poyu.util.JDBCHelper;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/jsp/user/carOperation/CarUnruleQuery")
public class CarUnruleQuery extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html,charset=UTF-8");
        String arr[] = {"unrule_record","time","unrule_reason"};
        Car car = new Car();
        CarDao carDao = new CarDaoImpl();
        String car_number = req.getParameter("car_number");
        String name =req.getParameter("name");
        List<UserUnruleInfo> list = JDBCHelper.executeQuery("SELECT t_unrule.unrule_record,t_photo.time,t_unrule.unrule_reason FROM t_unrule,t_photo where t_unrule.car_number=t_photo.car_number and  t_photo.car_number='" + car_number + "'GROUP BY unrule_record DESC", UserUnruleInfo.class);
       if(list.size() != 0)
       {
           req.setAttribute("name",name);
           req.setAttribute("car_number",car_number);
           System.out.println(list);
           System.out.println(list.size());
           req.setAttribute("lists",list);
           req.getRequestDispatcher("UserViolateInfo.jsp").forward(req, resp);
       }
       else{
           req.setAttribute("notice","没有相关信息!");
           req.getRequestDispatcher("CarUnruleQuery.jsp").forward(req,resp);
       }
    }
}

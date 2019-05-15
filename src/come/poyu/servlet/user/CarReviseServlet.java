package come.poyu.servlet.user;

import come.poyu.dao.CarDao;
import come.poyu.dao.impl.CarDaoImpl;
import come.poyu.entity.Car;
import come.poyu.util.JDBCHelper;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class CarReviseServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=UTF-8");
        String arr[] = {"id", "name", "number", "id_card", "email", "car_number", "car_sign", "car_style"};
        Car car = new Car();
        CarDao carDao = new CarDaoImpl();
        String car_number = req.getParameter("car_number");
        String[] list = JDBCHelper.excuteQueryOne("SELECT * FROM T_CAR WHERE CAR_NUMBER='" + car_number + "'", car_number);
       if(list.length != 0)
       {
           for (int i = 0; i < arr.length; i++) {
               if (list[i] != null) {
                   req.setAttribute(arr[i], list[i]);
               } else {
                   req.setAttribute(arr[i], null);
               }
           }
           req.getRequestDispatcher("CarRevised.jsp").forward(req, resp);
       }else {
           resp.sendRedirect("CarRevise.jsp");
       }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=UTF-8");
        Car car = new Car();
        CarDao carDao = new CarDaoImpl();
        car.setName(req.getParameter("name"));
        car.setNumber(req.getParameter("number"));
        car.setId_card(req.getParameter("id_card"));
        car.setEmail(req.getParameter("email"));
        car.setCar_number(req.getParameter("car_number"));
        car.setCar_sign(req.getParameter("car_sign"));
        car.setCar_style(req.getParameter("car_style"));
        int list = carDao.update(car);
        PrintWriter out = resp.getWriter();
        if(list == 1){
            req.setAttribute("notice","修改成功");
            req.getRequestDispatcher("ok.jsp").forward(req,resp);
        }
        else{
            req.setAttribute("notice","修改失败");
            req.getRequestDispatcher("CarRevise.jsp").forward(req,resp);
        }

    }
}

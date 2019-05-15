package come.poyu.servlet;

import come.poyu.dao.CarDao;
import come.poyu.dao.impl.CarDaoImpl;
import come.poyu.entity.Car;
import come.poyu.util.JDBCHelper;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class CarServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Car car = new Car();
        resp.setCharacterEncoding("UTF-8");
        req.setCharacterEncoding("UTF-8");
        CarDao carDao = new CarDaoImpl();
        req.setAttribute("name", req.getParameter("name"));
        req.setAttribute("number", req.getParameter("number"));
        req.setAttribute("id_card", req.getParameter("id_card"));
        req.setAttribute("email", req.getParameter("email"));
        req.setAttribute("car_num", req.getParameter("car_num"));
        req.setAttribute("car_sign", req.getParameter("car_sign"));
        req.setAttribute("car_style", req.getParameter("car_sty"));
        car.setName(req.getParameter("name"));
        car.setNumber(req.getParameter("number"));
        car.setId_card(req.getParameter("id_card"));
        car.setEmail(req.getParameter("email"));
        car.setCar_number(req.getParameter("car_num"));
        car.setCar_sign(req.getParameter("car_sign"));
        car.setCar_style(req.getParameter("car_sty"));
        int list = carDao.select("select *from t_car where car_number=?", req.getParameter("car_num").toString());
        if (list == 1) {
            req.setAttribute("notice", "您的车辆已登记！");
            req.getRequestDispatcher("CarRegister.jsp").forward(req, resp);
        }
        else {
            int list1 = carDao.register(car);
            if (list1 == 1) {
                JDBCHelper.executeUpdate("alter table t_car drop column id");
                JDBCHelper.executeUpdate("alter table t_car add id mediumint(8) not null primary key auto_increment first");
                req.getRequestDispatcher("CarSuc.jsp").forward(req, resp);
            } else resp.sendRedirect("CarRegister.jsp");
        }

}

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }
}

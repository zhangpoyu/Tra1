package come.poyu.servlet;

import come.poyu.dao.CarDao;
import come.poyu.dao.impl.CarDaoImpl;
import come.poyu.entity.Car;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

public class CarInfoServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setCharacterEncoding("UTF-8");
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=UTF-8");
        String btn = req.getParameter("button");
        PrintWriter out = resp.getWriter();
        //out.print(btn);
        Car car = new Car();
        CarDao carDao = new CarDaoImpl();
        car.setName(req.getParameter("name"));
        car.setNumber(req.getParameter("number"));
        car.setCar_number(req.getParameter("car_number"));
        car.setCar_sign(req.getParameter("car_sign"));
        car.setCar_style(req.getParameter("car_style"));
        switch (btn)
        {
            case "查看":{

                List<Car> list = carDao.getAll();
                req.setAttribute("cars",list);
                out.print(list);
                req.getRequestDispatcher("CarInf.jsp").forward(req,resp);
            }
            case "删除" :{
                int list = carDao.del(car,Integer.parseInt(req.getParameter("id")));
                if(list == 1){
                    req.setAttribute("message","删除成功！");
                    req.getRequestDispatcher("CarInf.jsp").forward(req,resp);
                }
                else{
                    req.setAttribute("message","删除失败！");
                }
            }
            case "修改" :{
                //car.setId(Integer.parseInt(req.getParameter("id")));
                car.setName(req.getParameter("name"));
                car.setNumber(req.getParameter("number"));
                car.setId_card(req.getParameter("id_card"));
                car.setEmail(req.getParameter("email"));
                car.setCar_number(req.getParameter("car_number"));
                car.setCar_sign(req.getParameter("car_sign"));
                car.setCar_style(req.getParameter("car_style"));
                //JDBCHelper.executeUpdate("alter table t_car drop column id");
                //JDBCHelper.executeUpdate("alter table t_car add id mediumint(8) not null primary key auto_increment first");
                int list = carDao.update(car);
                if(list == 1)
                {
                    req.setAttribute("message","修改成功!");
                    req.getRequestDispatcher("CarInfoQuery.jsp").forward(req,resp);
                }
                else req.getRequestDispatcher("CarInfoQuery.jsp").forward(req,resp);
            }
        }

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }
}

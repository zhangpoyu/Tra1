package come.poyu.servlet;

import come.poyu.dao.CarDao;
import come.poyu.dao.impl.CarDaoImpl;
import come.poyu.entity.Car;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class UnruleDealServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Car car = new Car();
        CarDao carDao = new CarDaoImpl();
        int id = Integer.parseInt(req.getParameter("id"));
        int l = carDao.del(car,id);
        if(l == 1)
        {
            List<Car> list = carDao.getAll();
            req.setAttribute("cars",list);
            //out.print(list);
            req.getRequestDispatcher("UnRule.jsp").forward(req,resp);
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }
}

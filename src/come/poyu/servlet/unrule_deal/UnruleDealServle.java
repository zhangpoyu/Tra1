package come.poyu.servlet.unrule_deal;

import come.poyu.dao.UnruleCarDao;
import come.poyu.dao.impl.UnruleCarDaoImpl;
import come.poyu.entity.UnruleCar;
import come.poyu.util.JDBCHelper;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/jsp/manager/carInfo/UnruleDeal")
public class UnruleDealServle extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setCharacterEncoding("UTF-8");
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=UTF-8");
        String btn = req.getParameter("button");
        PrintWriter out = resp.getWriter();
        String button = req.getParameter("btn");
        int id = Integer.parseInt(req.getParameter("id"));
        UnruleCar unruleCar = new UnruleCar();
        UnruleCarDao unruleCarDao = new UnruleCarDaoImpl();
        unruleCar.setId(id);
        unruleCar.setName(req.getParameter("name"));
        unruleCar.setNumber(req.getParameter("number"));
        unruleCar.setCar_number(req.getParameter("car_number"));
        unruleCar.setUnrule_record(req.getParameter("unrule_record"));
        unruleCar.setUnrule_reason(req.getParameter("unrule_reason"));
        System.out.println(button);
        switch (button) {
            case "修改": {
                int list = unruleCarDao.update(unruleCar);
                if (list == 1) {
                    req.setAttribute("notice", "修改成功");
                    req.getRequestDispatcher("UnruleInfoQuery.jsp").forward(req, resp);
                    break;
                }

            }
            case "添加": {
                int list = unruleCarDao.add(unruleCar);
                if (list == 1) {
                    req.setAttribute("notice", "添加成功");
                    req.getRequestDispatcher("UnruleInfoQuery.jsp").forward(req, resp);
                    break;
                }
            }

            case "删除": {
                int list = unruleCarDao.del(unruleCar, id);
                if (list == 1) {
                    JDBCHelper.executeUpdate("alter table t_unrule drop column id");
                    JDBCHelper.executeUpdate("alter table t_unrule add id mediumint(8) not null primary key auto_increment first");
                    req.setAttribute("notice", "删除成功");
                    req.getRequestDispatcher("UnruleInfoQuery.jsp").forward(req, resp);
                    break;
                }

            }
            default: {
                req.setAttribute("notice", "操作错误！");
                req.getRequestDispatcher("UnruleInfoQuery.jsp").forward(req, resp);
                break;
            }
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }
}

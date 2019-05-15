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

@WebServlet("/jsp/manager/carInfo/UnruleInput")
public class UnruleInputServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=UTf-8");
        UnruleCar unruleCar = new UnruleCar();
        UnruleCarDao unruleCarDao = new UnruleCarDaoImpl();
        unruleCar.setName(req.getParameter("name"));
        unruleCar.setNumber(req.getParameter("number"));
        unruleCar.setCar_number(req.getParameter("car_number"));
        unruleCar.setUnrule_record(req.getParameter("unrule_record"));
        unruleCar.setUnrule_reason(req.getParameter("unrule_reason"));
        int list = unruleCarDao.add(unruleCar);
        if (list == 1) {
            JDBCHelper.executeUpdate("alter table t_unrule drop column id");
            JDBCHelper.executeUpdate("alter table t_unrule add id mediumint(8) not null primary key auto_increment first");
            req.setAttribute("notice", "添加成功!");
            req.getRequestDispatcher("UnruleInfoQuery.jsp").forward(req, resp);
        }else
        {
            PrintWriter out = resp.getWriter();
            out.print("<script text=\"javascript\">alert(\"添加失败\");return false;</script>");
        }
    }
}

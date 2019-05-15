package come.poyu.servlet;

import come.poyu.dao.UnruleCarDao;
import come.poyu.dao.impl.UnruleCarDaoImpl;
import come.poyu.entity.UnruleCar;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

public class UnruleCarServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setCharacterEncoding("UTF-8");
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=UTF-8");
        UnruleCar unruleCar = new UnruleCar();
        UnruleCarDao unruleCarDao = new UnruleCarDaoImpl();
        PrintWriter out = resp.getWriter();
        List<UnruleCar> list = unruleCarDao.getAll();
        req.setAttribute("unRuleCars",list);
        out.print(list);
        req.getRequestDispatcher("UnRule.jsp").forward(req,resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }
}

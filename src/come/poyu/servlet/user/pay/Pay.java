package come.poyu.servlet.user.pay;

import come.poyu.dao.ManagerDao;
import come.poyu.dao.impl.ManagerDaoImpl;
import come.poyu.util.JDBCHelper;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/jsp/user/carOperation/pay")
public class Pay extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html,charset=UTF-8");
        resp.setCharacterEncoding("UTF-8");
        PrintWriter out = resp.getWriter();
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        ManagerDao managerDao = new ManagerDaoImpl();
        int list = managerDao.select("select * from t_userpay where username=?", username);
        if (list == 1) {
            Object pwd = JDBCHelper.executeScalar("select password from t_userpay where username=?", username);
            if (password.equals(pwd)) {
                resp.sendRedirect("pay/pay.jsp");
            } else {
                this.alert(resp,"账户或密码错误！");
                out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
                out.println("<HTML>");
                out.println(" <HEAD><TITLE>A Servlet</TITLE></HEAD>");
                out.println(" <BODY style=\"text-align:center;\">");
                out.print("<input style=\"color:red;\" type=\"button\" value=\"点击返回\" onclick=\"javascript :history.back(-1);\"/>");
                out.println(" </BODY>");
                out.println("</HTML>");
            }
        } else {
            this.alert(resp,"账户或密码错误！");
            out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
            out.println("<HTML>");
            out.println(" <HEAD><TITLE>A Servlet</TITLE></HEAD>");
            out.println(" <BODY style=\"text-align:center;\">");
            out.print("<input style=\"color:red;\" type=\"button\" value=\"点击返回\" onclick=\"javascript :history.back(-1);\"/>");
            out.println(" </BODY>");
            out.println("</HTML>");
        }
    }

    private void alert(HttpServletResponse response, String message) {
        try {
            PrintWriter out = response.getWriter();
            out.print("<script type=\"text/javascript\" language=\"javascript\" charset=\"UTF-8\">alert('" + message + "');</script>");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

}

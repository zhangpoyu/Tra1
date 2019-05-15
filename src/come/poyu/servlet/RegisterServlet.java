package come.poyu.servlet;

import come.poyu.constants.AppConstants;
import come.poyu.dao.ManagerDao;
import come.poyu.dao.impl.ManagerDaoImpl;
import come.poyu.entity.Manager;
import come.poyu.util.JDBCHelper;
import come.poyu.util.KeyedMd5;
import come.poyu.util.String_;
import org.junit.Test;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;


public class RegisterServlet extends HttpServlet {
    private ManagerDao ManagerDao = new ManagerDaoImpl();

    @Test
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        HttpSession session = request.getSession();
        //request.getSession().setMaxInactiveInterval(1800);
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String userN = request.getParameter("userName");
        String userP = KeyedMd5.getMd5Utf8(request.getParameter("userPwd"), AppConstants.MANAGER_PWD_KEY);
        if (String_.isNullOrEmpty(userP) || String_.isNullOrEmpty(userN)) {
            request.setAttribute("notice", "用户名或密码为空！");
            request.getRequestDispatcher("register.jsp").forward(request, response);
        } else {
            Manager manager = new Manager();
            String str = request.getParameter("select");
            manager.setManager_name(request.getParameter("userName"));
            manager.setManager_pwd(KeyedMd5.getMd5Utf8(request.getParameter("userPwd"), AppConstants.MANAGER_PWD_KEY));
            if (str.equals("管理员")) {
                int list = ManagerDao.select("select * from t_managerlogin where login_name=?", userN);
                if (list == 0) {
                    int Insert = ManagerDao.login("INSERT INTO T_MANAGERLOGIN VALUE(?,?)", manager);
                    if (Insert == 1) {
                        //this.alert(response, "注册成功！");
                        request.setAttribute("userName", userN);
                        request.getRequestDispatcher("success.jsp").include(request, response);
                    }
                } else {
                    request.setAttribute("notice", "该用户名已注册！");
                    request.getRequestDispatcher("register.jsp").forward(request, response);
                }
            } else if (str.equals("用户")) {
                int list = ManagerDao.select("select * from t_userlogin where login_name=?", userN);
                if (list == 0) {
                    int Insert = ManagerDao.login("INSERT INTO T_USERLOGIN VALUE(?,?)", manager);
                    if (Insert == 1) {
                        //this.alert(response, "注册成功！");
                        request.setAttribute("userName", userN);
                        request.getRequestDispatcher("success.jsp").include(request, response);
                    }
                } else {
                    request.setAttribute("notice", "该用户名已注册！");
                    request.getRequestDispatcher("register.jsp").forward(request, response);
                }
            } else if (str.equals("超级管理员")) {
                int list = ManagerDao.select("select * from t_supermanagerlogin where login_name=?", userN);
                if (list == 0) {
                    int Insert = ManagerDao.login("INSERT INTO T_SUPERMANAGERLOGIN VALUE(?,?)", manager);
                    if (Insert == 1) {
                        //this.alert(response, "注册成功！");
                        request.setAttribute("userName", userN);
                        request.getRequestDispatcher("success.jsp").include(request, response);
                    }
                } else {
                    request.setAttribute("notice", "该用户名已注册！");
                    request.getRequestDispatcher("register.jsp").forward(request, response);
                }
            } else {
                request.setAttribute("notice", "该用户名已注册！");
                request.getRequestDispatcher("register.jsp").forward(request, response);
            }
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        doPost(request, response);

    }

    private void alert(HttpServletResponse response, String message) {
        try {
            PrintWriter out = response.getWriter();
            out.print("<script type=\"text/javascript\" language=\"javascript\">alert('" + message + "');</script>");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void alertRedirect(HttpServletResponse response, String message, String url) {
        try {
            PrintWriter out = response.getWriter();
            out.print("<script type=\"text/javascript\" language=\"javascript\">alert('" + message + "'); window.location.href='" + url + "';</script>");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }


    private void alertClose(HttpServletResponse response, String message) {
        try {
            PrintWriter out = response.getWriter();
            out.print("<script type=\"text/javascript\" language=\"javascript\">alert('" + message + "'); var index = parent.layer.getFrameIndex(window.name); parent.layer.close(index);</script>");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static void main(String args[]) {
        JDBCHelper.executeUpdate("insert into T_MANAGERLOGIN value(?,?)", "st", "str");
    }
}

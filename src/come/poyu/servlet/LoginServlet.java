package come.poyu.servlet;

import come.poyu.constants.AppConstants;
import come.poyu.dao.ManagerDao;
import come.poyu.dao.impl.ManagerDaoImpl;
import come.poyu.entity.Manager;
import come.poyu.util.JDBCHelper;
import come.poyu.util.KeyedMd5;
import come.poyu.util.String_;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        ManagerDao managerDao = new ManagerDaoImpl();
        Manager manager = new Manager();
        String userName = request.getParameter("userName");
        String userPwd = KeyedMd5.getMd5Utf8(request.getParameter("userPwd"), AppConstants.MANAGER_PWD_KEY);
        if (String_.isNullOrEmpty(userName) || String_.isNullOrEmpty(userPwd)) {
            request.setAttribute("notice", "用户名或密码为空！");
            request.getRequestDispatcher("index.jsp").forward(request, response);
        } else {
            String str = request.getParameter("select");
            request.setAttribute("name", str);
            if (str.equals("管理员")) {
                int list = managerDao.select("select * from t_managerlogin where login_name=?", userName);
                if (list == 1) {
                    Object list1 = JDBCHelper.executeScalar("select login_pwd from t_managerlogin where login_name=?", userName);
                    if (list1.equals(userPwd)) {
                        request.setAttribute("userName", request.getParameter("userName"));
                        request.getRequestDispatcher("jsp/manager/manager.jsp").forward(request, response);
                    } else {
                        request.setAttribute("selected", "管理员");
                        request.setAttribute("name", userName);
                        request.setAttribute("notice", "密码错误！");
                        request.getRequestDispatcher("index.jsp").forward(request, response);
                    }
                } else {
                    request.setAttribute("name", "");
                    request.setAttribute("notice", "该用户未注册！");
                    request.getRequestDispatcher("index.jsp").forward(request, response);
                }
            } else if (str.equals("用户")) {
                int list = managerDao.select("select * from t_userlogin where login_name=?", userName);
                if (list == 1) {
                    Object list1 = JDBCHelper.executeScalar("select login_pwd from t_userlogin where login_name=?", userName);
                    if (list1.equals(userPwd)) {
                        request.setAttribute("name", userName);
                        request.setAttribute("userName", request.getParameter("userName"));
                        request.getRequestDispatcher("jsp/manager/user.jsp").forward(request, response);
                    } else {
                        request.setAttribute("name", userName);
                        request.setAttribute("notice", "密码错误！");
                        request.getRequestDispatcher("index.jsp").forward(request, response);
                    }
                } else {
                    request.setAttribute("name", "");
                    request.setAttribute("notice", "该用户未注册！");
                    request.getRequestDispatcher("index.jsp").forward(request, response);
                }
            } else if (str.equals("超级管理员")) {
                int list = managerDao.select("select * from t_supermanagerlogin where login_name=?", userName);
                if (list == 1) {
                    Object list1 = JDBCHelper.executeScalar("select login_pwd from t_supermanagerlogin where login_name=?", userName);
                    if (list1.equals(userPwd)) {
                        request.setAttribute("userName", request.getParameter("userName"));
                        request.getRequestDispatcher("jsp/manager/supManager.jsp").forward(request, response);
                    } else {
                        request.setAttribute("name", userName);
                        request.setAttribute("notice", "密码错误！");
                        request.getRequestDispatcher("index.jsp").forward(request, response);
                    }
                } else {
                    request.setAttribute("name", "");
                    request.setAttribute("notice", "该用户未注册！");
                    request.getRequestDispatcher("index.jsp").forward(request, response);
                }
            } else {
                request.setAttribute("notice", "您还未注册，请先注册！");
                request.getRequestDispatcher("/index.jsp").forward(request, response);
            }
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}

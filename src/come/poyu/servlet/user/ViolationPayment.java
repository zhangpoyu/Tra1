package come.poyu.servlet.user;


import come.poyu.dao.UserUnruleInfo;
import come.poyu.util.JDBCHelper;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/jsp/user/carOperation/ViolationPayment")
public class ViolationPayment   extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html,charset=utf-8");
        String unrule_record = req.getParameter("unrule_record");
        List<UserUnruleInfo> list = JDBCHelper.executeQuery("SELECT t_unrule.unrule_record,t_photo.time,t_unrule.unrule_reason FROM t_unrule,t_photo where t_unrule.unrule_record=t_photo.unrule_record and  t_photo.unrule_record='" + unrule_record + "'", UserUnruleInfo.class);
       if(list.size() != 0 )
       {
           System.out.println(list);
           System.out.println(list.size());
           req.setAttribute("lists",list);
           req.getRequestDispatcher("ViolationPaymented.jsp").forward(req, resp);
       }else {
           req.setAttribute("notice","没有相关信息!");
           req.getRequestDispatcher("Ticket_deal.jsp").forward(req,resp);
       }
    }
}

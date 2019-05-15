package come.poyu.servlet.Picture;

import come.poyu.dao.PhotoDao;
import come.poyu.dao.impl.PhotoDaoImpl;
import come.poyu.entity.Photo;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.OutputStream;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class DownLoadServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=UTF-8");
        req.setCharacterEncoding("utf-8");
        resp.setCharacterEncoding("utf-8");
        String unrule_record =new String(req.getParameter("unrule_record").getBytes("ISO-8859-1"), "UTF-8");
        //String  unrule_record = req.getParameter("unrule_record");
        System.out.println(unrule_record);
        List img = new ArrayList();
        Photo photo = new Photo();
        photo.setUnrule_recorde(unrule_record);
        PhotoDao photoDao = new PhotoDaoImpl();
        ResultSet rs = null;
        try {
            Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/traffic", "root", "image/processing");
            try {
                //实例化PreparedStatement对象
                PreparedStatement pstmt = con.prepareStatement("select * from t_photo where unrule_record =?");
                pstmt.setString(1, unrule_record);//查询条件根据上传人查询
                rs = pstmt.executeQuery();//执行查询
                if (rs.next()) {//循环取出所有图片
                    byte[] buff = rs.getBytes("p");
                    //图片所在的字段名，前面存的是byte 现在相对应的取
                    OutputStream os = resp.getOutputStream();//获得输出流
                    os.write(buff);//将其输出页面
                    System.out.println("搜索成功！");
                }
                pstmt.close();
                rs.close();
                rs.close();
            } catch (SQLException e) {
                System.out.println(e);
            } catch (Exception e) {
                e.printStackTrace();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
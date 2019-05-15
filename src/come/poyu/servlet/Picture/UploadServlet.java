package come.poyu.servlet.Picture;

import come.Property.PropertiesTest;
import come.poyu.dao.PhotoDao;
import come.poyu.dao.impl.PhotoDaoImpl;
import come.poyu.entity.Photo;
import come.poyu.entity.UnruleCar;
import come.poyu.util.JDBCHelper;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.bytedeco.javacpp.opencv_core;
import org.bytedeco.javacpp.opencv_core.Mat;
import come.image.processing.core.CharsRecognise;
import come.image.processing.core.PlateDetect;
import org.junit.Test;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.text.SimpleDateFormat;

import java.util.Date;
import java.util.List;
import java.util.Vector;

import static org.bytedeco.javacpp.opencv_imgcodecs.imread;

public class UploadServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Photo photo = new Photo();
        UnruleCar unruleCar = new UnruleCar();
        PhotoDao photoDao = new PhotoDaoImpl();
        resp.setContentType("text/html;charset=UTF-8");
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        String name = null;
        String number = "";
        String car_number = "";
        StringBuffer unrule_record = new StringBuffer();
        String unrule_reason = "";
        String time = "";
        Date dt = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyy-mm-dd HH:mm:ss aa");
        time = sdf.format(dt);
        List Files = new ArrayList();
        DiskFileItemFactory factory = new DiskFileItemFactory();
        ServletFileUpload upload = new ServletFileUpload(factory);
        upload.setHeaderEncoding("UTF-8");
        try {
            List<FileItem> list = upload.parseRequest(req);
            for (FileItem items : list) {
                if (items.isFormField()) {
                    if (items.getFieldName().equals("unrule_reason")) {
                        unrule_reason = new String(items.getString().getBytes("ISO-8859-1"), "UTF-8");
                    }
                    System.out.println("图像处理信息如下所示：" + "\n" + "*******************************" + "\n" + unrule_reason);
                    System.out.println(items.getFieldName());
                } else {
                    Files.add(items);
                }
            }
            for (int i = 0; i < Files.size(); i++) {
                FileItem item = (FileItem) Files.get(i);
                String filename = item.getName();
                System.out.println(filename);
                if(filename==""||filename==null)
                {
                    resp.sendRedirect("Upload.jsp");
                    break;
                }
                PropertiesTest pt = new PropertiesTest();
                String AbsolutePath = pt.getProperties();
                String path = "" + AbsolutePath + "res/image/test_image/" + filename + "";
                System.out.println("图片位置：" + path);
                car_number = testCharsRecognise1(path);
                InputStream file = item.getInputStream();
                byte[] buffer = new byte[file.available()];
                file.read(buffer);
                try {
                    /*
                     * 获取身份证号码
                     * */
                    String id_card = JDBCHelper.executeScalar("select id_card from t_car where car_number=?", car_number).toString();
                    System.out.println(id_card);
                    /*
                     * 字符拼接16位的违章编号
                     * */
                    int a[] = new int[10];
                    unrule_record.append(id_card.substring(0, 6));
                    for (int j = 0; j < a.length; j++) {
                        a[j] = (int) (10 * (Math.random()));
                        unrule_record.append(a[j]);
                    }
                    System.out.println(unrule_record);
                    String[] arr = JDBCHelper.excuteQueryOne("SELECT name,number FROM T_CAR WHERE CAR_NUMBER='" + car_number + "'", car_number);
                    name = arr[0];
                    photo.setUsername(name);
                    photo.setCar_number(car_number);
                    photo.setTime(time);
                    photo.setUnrule_recorde(unrule_record.toString());
                    photo.setPicture(buffer);
                    int list1 = photoDao.add(photo);
                    if (list1 == 1) {
                        System.out.println("违章图片保存成功！" + "\n" + "******************************");
                    } else {
                        resp.sendRedirect("Upload.jsp");
                    }

                    /*
                     * name number car_number unrule_record unrule_reason*/
                    number = arr[1];
                    unruleCar.setName(name);
                    unruleCar.setNumber(number);
                    unruleCar.setCar_number(car_number);
                    unruleCar.setUnrule_record(unrule_record.toString());
                    unruleCar.setUnrule_reason(unrule_reason);
                    int count = photoDao.addUnruleInfo(unruleCar);
                    if (count == 1) {
                        JDBCHelper.executeUpdate("alter table t_unrule drop column id");
                        JDBCHelper.executeUpdate("alter table t_unrule add id mediumint(8) not null primary key auto_increment first");
                        System.out.println("违章记录保存成功！" + "\n" + "******************************");
                        req.setAttribute("notice", "违章图片上传成功！");
                        req.getRequestDispatcher("../../../IndexInfo.jsp").forward(req, resp);
                    } else {
                        resp.sendRedirect("Upload.jsp");
                    }
                } catch (Exception e1) {
                    System.out.println(e1);
                }
            }
        } catch (FileUploadException e2) {
            resp.sendRedirect("Upload.jsp");
            System.out.println(e2);
        }
    }

    public String testCharsRecognise1(String path) {
        // String imgPath = "D:/Tra/res/image/test_image/core_func_yellow.jpg";
        Mat src = imread(path);
        String result = null;
        PlateDetect plateDetect = new PlateDetect();
        plateDetect.setPDLifemode(true);
        Vector<opencv_core.Mat> matVector = new Vector<Mat>();
        if (0 == plateDetect.plateDetect(src, matVector)) {
            CharsRecognise cr = new CharsRecognise();

            for (int i = 0; i < matVector.size(); ++i) {
                result = cr.charsRecognise(matVector.get(i));
                System.out.println("Chars Recognised: " + result);
            }
        }
        return result;
    }

@Test
    public void testCharsRecognise() {
        String AbsolutePath = "res/image/test_image/A85890.jpg";
        Mat src = imread(AbsolutePath);
        String result = null;
        PlateDetect plateDetect = new PlateDetect();
        plateDetect.setPDLifemode(true);
        Vector<opencv_core.Mat> matVector = new Vector<Mat>();
        if (0 == plateDetect.plateDetect(src, matVector)) {
            CharsRecognise cr = new CharsRecognise();

            for (int i = 0; i < matVector.size(); ++i) {
                result = cr.charsRecognise(matVector.get(i));
                System.out.println("Chars Recognised: " + result);
            }
        }
    }
}
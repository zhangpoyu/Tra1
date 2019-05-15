package come.poyu.servlet.Picture;
import org.bytedeco.javacpp.opencv_core.Mat;
import come.image.processing.core.CharsRecognise;
import come.image.processing.core.PlateDetect;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Vector;
import static org.bytedeco.javacpp.opencv_imgcodecs.imread;

@WebServlet("/jsp/user/info/Test")
public class TestServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String str = testCharsRecognise("D:/Tra/res/image/test_image/core_func_yellow.jpg");
        req.setAttribute("Num",str);
        req.getRequestDispatcher("ok.jsp").forward(req,resp);
    }
    public String testCharsRecognise(String path) {
        String imgPath = "D:/Tra/res/image/test_image/core_func_yellow.jpg";
        Mat src = imread(imgPath);
        String result =null;
        PlateDetect plateDetect = new PlateDetect();
        plateDetect.setPDLifemode(true);
        Vector<Mat> matVector = new Vector<Mat>();
        if (0 == plateDetect.plateDetect(src, matVector)) {
            CharsRecognise cr = new CharsRecognise();

            for (int i = 0; i < matVector.size(); ++i) {
                result= cr.charsRecognise(matVector.get(i));
                System.out.println("Chars Recognised: " + result);
            }
        }
        return result;
    }
}

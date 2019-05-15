package come.image.processing.util;

import come.image.processing.core.CharsRecognise;
import come.image.processing.core.CoreFunc;
import come.image.processing.core.PlateDetect;
import org.bytedeco.javacpp.opencv_core.Mat;


import org.junit.Test;


import java.util.Vector;

import static org.bytedeco.javacpp.opencv_imgcodecs.imread;


/**
/**
 * @author lin.yao
 * 
 */
public class EasyPrTest {

    @Test
    public void testPlateRecognise() {
        //String imgPath = "res/image/test_image/test.jpg";
        String imgPath = "res/image/test_image/core_func_yellow.jpg";
        Mat src = imread(imgPath);
        PlateDetect plateDetect = new PlateDetect();
        plateDetect.setPDLifemode(true);
        Vector<Mat> matVector = new Vector<Mat>();
        if (0 == plateDetect.plateDetect(src, matVector)) {
            CharsRecognise cr = new CharsRecognise();

            for (int i = 0; i < matVector.size(); ++i) {
                String result = cr.charsRecognise(matVector.get(i));
                System.out.println("Chars Recognised: " + result);
            }
        }
    }


    @Test
    public void testCharsRecognise() {
        String imgPath = "res/image/test_image/core_func_yellow.jpg";

        Mat src = imread(imgPath);
        CharsRecognise cr = new CharsRecognise();
        cr.setCRDebug(true);
        String result = cr.charsRecognise(src);
        System.out.println("Chars Recognised: " + result);
    }

    @Test
    public void testColorDetect() {
        String imgPath = "res/image/test_image/core_func_yellow.jpg";

        Mat src = imread(imgPath);

        CoreFunc.Color color = CoreFunc.getPlateType(src, true);
        System.out.println("Color Deteted: " + color);
    }
}

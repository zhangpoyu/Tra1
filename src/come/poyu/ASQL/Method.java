package come.poyu.ASQL;/*
package come.poyu.a;

import come.poyu.b.CharsRecognise;
import org.bytedeco.javacpp.opencv_core;
import org.junit.Test;
import poyu.core.*;

import java.util.Vector;

import static org.bytedeco.javacpp.opencv_imgcodecs.imread;
import static poyu.core.CoreFunc.*;

public class Method {


    @Test
    public void testPlateRecognise() {
        //String imgPath = "res/image/test_image/test.jpg";
        String imgPath = "res/images/plate_recognize.jpg";

        opencv_core.Mat src = imread(imgPath);
        PlateDetect plateDetect = new PlateDetect();
        plateDetect.setPDLifemode(true);
        Vector<opencv_core.Mat> matVector = new Vector<opencv_core.Mat>();
        if (0 == plateDetect.plateDetect(src, matVector)) {
            come.poyu.b.CharsRecognise cr = new come.poyu.b.CharsRecognise();

            for (int i = 0; i < matVector.size(); ++i) {
                String result = cr.charsRecognise(matVector.get(i));
                System.out.println("Chars Recognised: " + result);
            }
        }
    }

    @Test
    public void testPlateDetect() {
        String imgPath = "res/image/test_image/test.jpg";

        opencv_core.Mat src = imread(imgPath);
        PlateDetect plateDetect = new PlateDetect();
        plateDetect.setPDLifemode(true);
        Vector<opencv_core.Mat> matVector = new Vector<opencv_core.Mat>();
        if (0 == plateDetect.plateDetect(src, matVector)) {
            for (int i = 0; i < matVector.size(); ++i) {
                showImage("Plate Detected", matVector.get(i));
            }
        }
    }

    @Test
    public void testPlateLocate() {
        String imgPath = "res/image/test_image/test.jpg";

        opencv_core.Mat src = imread(imgPath);

        PlateLocate plate = new PlateLocate();
        plate.setDebug(true);
        plate.setLifemode(true);

        Vector<opencv_core.Mat> resultVec = plate.plateLocate(src);

        int num = resultVec.size();
        for (int j = 0; j < num; j++) {
            // showImage("Plate Located " + j, resultVec.get(j));
        }

        return;
    }

    @Test
    public void testCharsRecognise() {
       String imgPath = "res/images/plate_recognize.jpg";

        opencv_core.Mat src = imread(imgPath);
        come.poyu.b.CharsRecognise cr = new CharsRecognise();
        cr.setCRDebug(true);
        String result = cr.charsRecognise(src);
        System.out.println("Chars Recognised: " + result);
    }

    @Test
    public void testColorDetect() {
        String imgPath = "res/image/test_image/chars_recognise_suEUK722.jpg";

        opencv_core.Mat src = imread(imgPath);

        CoreFunc.Color color = getPlateType(src, true);
        System.out.println("Color Deteted: " + color);
    }

    @Test
    public void testProjectedHistogram() {
        String imgPath = "res/image/test_image/chars_identify_E.jpg";

        opencv_core.Mat src = imread(imgPath);
        projectedHistogram(src, CoreFunc.Direction.HORIZONTAL);
    }

    @Test
    public void testCharsIdentify() {
        String imgPath = "res/image/baidu_image/test5.jpg";

        opencv_core.Mat src = imread(imgPath);
        CharsIdentify charsIdentify = new CharsIdentify();
    String result = charsIdentify.charsIdentify(src, false, true);
        System.out.println(result);
}



    public static void main(String args[])
{
    String path = "res/image/test_image/plate_judge.jpg";
    Method Mt = new Method();

  Mt.testProjectedHistogram(path);
    Mt.testCharsRecognise(path);
    Mt.testColorDetect(path);
    Mt.testPlateDetect(path);
    Mt.testPlateLocate(path);
    Mt.testPlateRecognise(path);

    //Mt.testCharsIdentify(path);
}
}
*/

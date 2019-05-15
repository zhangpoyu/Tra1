package come.poyu.dao;
import org.bytedeco.javacpp.opencv_core.*;
import java.util.Vector;
/**
 *  字符分割
 * @author eguid
 * 
 */
public interface CharsSegmentDao {


    int charsSegment(final Mat input, Vector<Mat> resultVec);
    Boolean verifySizes(Mat r);
    Mat preprocessChar(Mat in);
    Mat clearLiuDing(Mat img);
    Rect GetChineseRect(final Rect rectSpe);
    int GetSpecificRect(final Vector<Rect> vecRect);
    int RebuildRect(final Vector<Rect> vecRect, Vector<Rect> outRect, int specIndex);
    void SortRect(final Vector<Rect> vecRect, Vector<Rect> out);
}

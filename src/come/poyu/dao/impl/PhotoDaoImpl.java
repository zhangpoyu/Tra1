package come.poyu.dao.impl;

import come.poyu.dao.PhotoDao;
import come.poyu.entity.Photo;
import come.poyu.entity.UnruleCar;
import come.poyu.util.JDBCHelper;
import org.bytedeco.javacpp.opencv_core;
import come.image.processing.core.CharsRecognise;


import java.util.List;
import java.util.Map;

import static org.bytedeco.javacpp.opencv_imgcodecs.imread;

public class PhotoDaoImpl implements PhotoDao {
    @Override
    public int add(Photo photo){
        return JDBCHelper.executeUpdate("insert into t_photo (name,car_number,unrule_record,time,picture) values(?,?,?,?,?)",photo.getUsername(),photo.getCar_number(),photo.getUnrule_recorde(),photo.getTime(),photo.getPicture());
    }
    @Override
    public int  addUnruleInfo(UnruleCar unruleCar){
       return JDBCHelper.executeUpdate("insert into t_unrule (id,name,number,car_number,unrule_record,unrule_reason) values(?,?,?,?,?,?)",null,unruleCar.getName(),unruleCar.getNumber(),unruleCar.getCar_number(),unruleCar.getUnrule_record(),unruleCar.getUnrule_reason());
    }
    @Override
    public List<Map<String, Object>> sel(String sql, String unrule_record){
        return JDBCHelper.executeQuery(sql,unrule_record);
    }

    @Override
    public String GetNumber(String path) {
        opencv_core.Mat src = imread(path);
        CharsRecognise cr = new CharsRecognise();
        //cr.setCRDebug(true);
        String result = null;
        result = cr.charsRecognise(src);
        System.out.println("Chars Recognised: " + result);
        return result;
    }
    }

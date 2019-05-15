package come.poyu.dao;

import come.poyu.entity.Photo;
import come.poyu.entity.UnruleCar;

import java.util.List;
import java.util.Map;

public interface PhotoDao {
    int add(Photo photo);
    int addUnruleInfo(UnruleCar unruleCar);
    List<Map<String, Object>> sel(String sql, String unrule_record);
    String GetNumber(String path);
}

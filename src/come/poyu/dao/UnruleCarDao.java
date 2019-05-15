package come.poyu.dao;

import come.poyu.entity.Car;
import come.poyu.entity.UnruleCar;

import java.util.List;


public interface UnruleCarDao {
    List<UnruleCar> getAll();
    Object UserGetUnruleInfo(String car_number, String unrule_record);
    int add(UnruleCar unruleCar);
    int update(UnruleCar unruleCar);
    int del(UnruleCar unruleCar, int id);
}

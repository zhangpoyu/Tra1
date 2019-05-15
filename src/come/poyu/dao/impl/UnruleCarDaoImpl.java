package come.poyu.dao.impl;
import come.poyu.dao.UnruleCarDao;
import come.poyu.entity.UnruleCar;
import come.poyu.util.JDBCHelper;

import java.util.List;

public class UnruleCarDaoImpl implements UnruleCarDao {
    @Override
    public List<UnruleCar> getAll(){
        return JDBCHelper.executeQuery("SELECT * FROM T_UNRULE",UnruleCar.class);
    }

    @Override
    public  Object UserGetUnruleInfo(String car_number,String unrule_record){
        return JDBCHelper.excuteQueryOne("SELECT number,id_card FROM traffic.t_car where name=(select name from traffic.t_photo where car_number=? and unrule_record=?)",car_number,unrule_record);
    }

    @Override
    public  int add(UnruleCar unruleCar){
        return JDBCHelper.executeUpdate("INSERT INTO T_UNRULE VALUES(?,?,?,?,?,?)",null,unruleCar.getName(),unruleCar.getNumber(),unruleCar.getCar_number(),unruleCar.getUnrule_record(),unruleCar.getUnrule_reason());
    }

    @Override
    public int update(UnruleCar unruleCar){return JDBCHelper.executeUpdate("UPDATE T_UNRULE SET NAME=?, NUMBER=?,CAR_NUMBER=?,UNRULE_RECORD=?, UNRULE_REASON=? WHERE ID=?",unruleCar.getName(),unruleCar.getNumber(),unruleCar.getCar_number(),unruleCar.getUnrule_record(),unruleCar.getUnrule_reason(),unruleCar.getId());}

    @Override
    public int del(UnruleCar unruleCar, int id){return  JDBCHelper.executeUpdate("DELETE FROM T_UNRULE WHERE id=?",id);}

}

package come.poyu.dao.impl;

import come.poyu.dao.CarDao;
import come.poyu.entity.Car;
import come.poyu.util.JDBCHelper;

import java.util.List;

public class CarDaoImpl implements CarDao {
    @Override
    public int register(Car car)
    {
        int list = JDBCHelper.executeUpdate("INSERT INTO T_CAR VALUE(?,?,?,?,?,?,?,?)",null,car.getName(),car.getNumber(),car.getId_card(),car.getEmail(),car.getCar_number(),car.getCar_sign(),car.getCar_style());
        /*JDBCHelper.executeScalar("select * from 表名 order by catId asc");
        JDBCHelper.executeScalar("alter table t_car drop column id");
        JDBCHelper.executeScalar("alter table t_car add id mediumint(8) not null primary key auto_increment first");
        alter table t_car drop column id;
        alter table t_car add id mediumint(8) not null primary key auto_increment first;*/
        return list;
    }
    @Override
    public int select(String sql,String name) {
        List list = JDBCHelper.executeQuery(sql, name);
        if (list.toString()=="[]") return 0;
        else return 1;
    }
    @Override
    public List<Car> getAll()
    {
        return JDBCHelper.executeQuery("SELECT * FROM T_CAR", Car.class);
    }

   @Override
   public Object getOne(String car_number){
        return  JDBCHelper.executeScalar("SELECT number FROM T_CAR WHERE CAR_NUMBER=?",car_number);
   }
    @Override
    public int del(Car car,int id){
        int list =JDBCHelper.executeUpdate("DELETE FROM T_CAR WHERE id=?",id);
        JDBCHelper.executeUpdate("alter table t_car drop column id");
        JDBCHelper.executeUpdate("alter table t_car add id mediumint(8) not null primary key auto_increment first");
        return list;
    }

    @Override
    public int update(Car car){return JDBCHelper.executeUpdate("UPDATE T_CAR SET NAME=?, NUMBER=?, ID_CARD=?, EMAIL=?, CAR_SIGN=?, CAR_STYLE=? WHERE CAR_NUMBER=?",car.getName(),car.getNumber(),car.getId_card(),car.getEmail(),car.getCar_sign(),car.getCar_style(),car.getCar_number());}
   //UPDATE T_CAR SET NAME=?,NUMBER=?,CAR_SIGN=?, CAR_STYLE=? WHERE CAR_NUMBER=?",car.getName(),car.getNumber(),car.getCar_sign(),car.getCar_style(),car.getCar_number()
    public static  void main(String args[])
    {
        CarDao carDao = new CarDaoImpl();
        List list = carDao.getAll();
        System.out.println(list);

    }
}

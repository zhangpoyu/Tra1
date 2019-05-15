package come.poyu.dao;

import come.poyu.entity.Car;

import java.util.List;

public interface CarDao {
    int register(Car car);
    int del(Car car, int id);
    int select(String sql, String name);
    int update(Car car);
    List<Car> getAll();
    Object getOne(String car_number);

}

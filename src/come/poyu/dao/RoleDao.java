package come.poyu.dao;

import come.poyu.entity.Role;

import java.util.List;

public interface RoleDao
{

    Role getById(String id);

    List<Role> getAll();

    /**
     * 根据ID更改某个角色的名称和描述信息
     * @param role
     * @return
     */
    int update(Role role);


    /**
     * 保存方法
     * @param role
     * @return
     */
    int save(Role role);

    /**
     * 删除指定的角色信息
     * @param id
     * @return
     */
    int remove(String id);

}

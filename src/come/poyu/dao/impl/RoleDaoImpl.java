package come.poyu.dao.impl;

import java.util.List;
import come.poyu.util.JDBCHelper;
import come.poyu.entity.Role;
import come.poyu.dao.RoleDao;
public class RoleDaoImpl implements RoleDao {
    @Override
    public Role getById(String id)
    {
        return JDBCHelper.executeQuery("SELECT * FROM T_ROLE WHERE ID=?", Role.class, id).get(0);
    }

    @Override
    public List<Role> getAll()
    {
        return JDBCHelper.executeQuery("SELECT * FROM T_ROLE", Role.class);
    }

     @Override
    public int update(Role role)
    {
        return JDBCHelper.executeUpdate("UPDATE T_ROLE SET NAME=?, REMARK=? WHERE ID=?", role.getName(), role.getRemark(), role.getId());
    }


    public int save(Role role)
    {
        return JDBCHelper.executeUpdate("INSERT INTO T_ROLE VALUE(?, ?, ?)", JDBCHelper.getPKL20(), role.getName(), role.getRemark());
    }


    @Override
    public int remove(String id)
    {
        return JDBCHelper.executeUpdate("DELETE FROM T_ROLE WHERE ID=?", id);
    }


}

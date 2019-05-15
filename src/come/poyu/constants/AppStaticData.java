package come.poyu.constants;



import come.poyu.entity.Manager;
import come.poyu.entity.Role;
import come.poyu.dao.RoleDao;
import come.poyu.dao.impl.RoleDaoImpl;
import java.util.List;

public class AppStaticData
{


    public static List<Role> ROLES;

    public static List<Manager> DICTIONARIES;

    public static List<Role> MANAGER_STATE_DICT;

    public static void reloadRoles()
    {
        RoleDao roleDao = new RoleDaoImpl();
        ROLES = roleDao.getAll();
    }
   
}

package come.poyu.ASQL;
import java.security.MessageDigest;
public class md {
    public static String md5(String str){
        String result = "";
        if(str!=null){
//此 MessageDigest 类为应用程序提供信息摘要算法的功能，如 MD5 或 SHA 算法
            try {
                MessageDigest m = MessageDigest.getInstance("MD5");
//该对象通过使用 update 方法处理数据
                m.update(str.getBytes("UTF-8"));
//一旦所有需要更新的数据都已经被更新了，即调用了update方法，应该调用 digest 方法之一完成哈希计算
                byte s[] = m.digest();
                for(int index=0;index<s.length;index++){
//以十六进制（基数 16）无符号整数形式返回一个整数参数的字符串表示形式。
                    result += result+Integer.toHexString((0x000000FF & s[index]) | 0xFFFFFF00).substring(6);
                }

            } catch (Exception e) {
                System.out.println("MD5加密错误！！");
                e.printStackTrace();
                result = null;
            }
        }
        return result;
    }
    public static void main(String args[])
    {
        System.out.println(md5("po"));
    }
}

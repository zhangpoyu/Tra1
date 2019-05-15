package come.poyu.util;

public class test {
    public static void main(String args[])
    {
        int a[] = new int[10];
        String b[] = new String[16];
        StringBuffer str = new StringBuffer();
        for (int j = 0; j < a.length; j++) {
            a[j] = (int) (10 * (Math.random()));
            System.out.println(a[j]);
            str.append(a[j]);
        } System.out.println(str);
    }
}

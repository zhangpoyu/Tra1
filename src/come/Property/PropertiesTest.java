package come.Property;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class PropertiesTest {
    public static void main(String[] args) {
        PropertiesTest pt = new PropertiesTest();
        try {
            pt.getProperties();
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }

    public String getProperties() throws IOException {
        /*web上
         * 先获取ServletContext,然后
         * InputStream in=context.getResourceAsStream("/WEB-INF/classes/init.properties");
         * InputStream inputStream = context.getResourceAsStream("/WEB-INF/classes/init.properties");
         */
        InputStream inputStream = PropertiesTest.class.getResourceAsStream("/db_config.properties");
        //InputStream inputStream = PropertiesTest.class.getClassLoader().getResourceAsStream("config.properties");
        //System.out.println("begin!!!");
        Properties properties = new Properties();
        try {
            properties.load(inputStream);
        } catch (IOException ioE) {
            ioE.printStackTrace();
        } finally {
            inputStream.close();
        }
        //System.out.println("name:"+properties.getProperty("name"));
        return properties.getProperty("path_resource");
    }
}

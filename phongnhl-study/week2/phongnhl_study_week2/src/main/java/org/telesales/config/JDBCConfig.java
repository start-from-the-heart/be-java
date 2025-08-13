package org.telesales.config;

import java.io.IOException;
import java.util.Properties;
import javax.sql.DataSource;
import org.springframework.jdbc.datasource.DriverManagerDataSource;


public class JDBCConfig {
  public static DataSource getDataSource() {
    Properties properties = new Properties();
      try (InputStream inputStream = JDBCConfig.class.getClassLoader().getResourceAsStream("application.properties")) {
      if (inputStream == null) {
        throw new RuntimeException("application.properties file not found in classpath");
      }
      properties.load(inputStream);
      DriverManagerDataSource ds = new DriverManagerDataSource();
        String driverClassName = properties.getProperty("db.driver-class-name");
        String url             = properties.getProperty("db.url");
        String username        = properties.getProperty("db.username");
        String password        = properties.getProperty("db.password");

        if (driverClassName == null || url == null || username == null || password == null) {
          throw new RuntimeException(
              "Missing required database properties in application.properties");
        }
      ds.setDriverClassName(driverClassName);
      ds.setUrl(properties.getProperty(url));
      ds.setUsername(properties.getProperty(username));
      ds.setPassword(properties.getProperty(password));
      return ds;
    } catch (IOException e) {
      throw new RuntimeException(e);
    }
  }
}

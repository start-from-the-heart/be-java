package org.telesales.config;

import java.io.IOException;
import java.util.Properties;
import javax.sql.DataSource;
import org.springframework.jdbc.datasource.DriverManagerDataSource;


public class JDBCConfig {
  public static DataSource getDataSource() {
    Properties properties = new Properties();
    try {
      properties.load(JDBCConfig.class.getClassLoader().getResourceAsStream("application.properties"));
      DriverManagerDataSource ds = new DriverManagerDataSource();
      ds.setDriverClassName(properties.getProperty("db.driver-class-name"));
      ds.setUrl(properties.getProperty("db.url"));
      ds.setUsername(properties.getProperty("db.username"));
      ds.setPassword(properties.getProperty("db.password"));
      return ds;
    } catch (IOException e) {
      throw new RuntimeException(e);
    }
  }
}

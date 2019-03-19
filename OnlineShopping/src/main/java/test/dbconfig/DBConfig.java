package test.dbconfig;

import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;


@Configuration
@EnableTransactionManagement
@EnableWebMvc
@ComponentScan
public class DBConfig 
{
	public DBConfig()
	{
		System.out.println("Configuration bean is created");
	}
	@Bean(name="dataSource")
	public DataSource getDataSource()
	{
		DriverManagerDataSource dataSource=new DriverManagerDataSource();
		dataSource.setDriverClassName("com.mysql.jdbc.Driver");
		dataSource.setUrl("jdbc:mysql://localhost:3306/project2");
		dataSource.setUsername("root");
		dataSource.setPassword("root");
		return dataSource;
	}
	
	@Bean(name="sessionFactory")
	public SessionFactory getSessionFactory()
	{
		System.out.println("---Session Factory bean is created---");
		LocalSessionFactoryBuilder lsfb=new LocalSessionFactoryBuilder(getDataSource());
		Properties hibernateProperties=new Properties();
		hibernateProperties.put("hibernate.dialect","org.hibernate.dialect.MySQLDialect");
		hibernateProperties.setProperty("hibernate.hbm2ddl.auto", "update");
		hibernateProperties.setProperty("hibernate.show_sql", "true");
		hibernateProperties.setProperty("hibernate.format_sql", "true");
		
		lsfb.addProperties(hibernateProperties);
		System.out.println("Completed");
		lsfb.scanPackages("test.model");
		//localsessionFactory.addAnnotatedClass(User.class);
		
		System.out.println("Session factory Complete");
		return lsfb.buildSessionFactory();
	}
	
	@Bean(name="txManager")
	public HibernateTransactionManager getHibernateTransactionmanager(SessionFactory sessionFactory)
	{
		System.out.println("---Hibernate Transaction Manager is created---");

		return new HibernateTransactionManager(sessionFactory);
	}

}

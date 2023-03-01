package teamwork.config;

import java.util.Properties;

import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.cfg.Environment;
import org.hibernate.service.ServiceRegistry;

import teamwork.model.Questions;
import teamwork.model.TeamRegister;
import teamwork.model.User;
import testJPA.entity.Categories;

public class HibernateConfig {

	private static SessionFactory sessionFactory;

	public static SessionFactory getSessionFactory() {
		if (sessionFactory == null) {
			try {
				Configuration configuration = new Configuration();

				Properties properties = new Properties();
//				properties.put(Environment.DRIVER, "com.microsoft.sqlserver.jdbc.SQLServerDriver");
//				properties.put(Environment.URL, "jdbc:sqlserver://SERVERSQL.demo.local:1433;databaseName=QuizDB");
//				properties.put(Environment.USER, "root");
//				properties.put(Environment.PASS, "toor");

				properties.put(Environment.DRIVER, "org.postgresql.Driver");
				properties.put(Environment.URL, "jdbc:postgresql://192.168.100.35:5432/quizdb");
				properties.put(Environment.USER, "postgres");
				properties.put(Environment.PASS, "toor");

				//properties.put(Environment.DIALECT, "org.hibernate.dialect.SQLServer2012Dialect");
				properties.put(Environment.DIALECT, "org.hibernate.dialect.PostgreSQLDialect");
				properties.put(Environment.SHOW_SQL, "true");
				properties.put(Environment.FORMAT_SQL, "true");
				properties.put(Environment.CURRENT_SESSION_CONTEXT_CLASS, "thread");
				properties.put(Environment.HBM2DDL_AUTO, "update");

				configuration.setProperties(properties);

				configuration.addAnnotatedClass(TeamRegister.class);
				configuration.addAnnotatedClass(Questions.class);
				configuration.addAnnotatedClass(Categories.class);
				configuration.addAnnotatedClass(User.class);

				ServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder()
						.applySettings(configuration.getProperties()).build();

				System.out.println("Hibernate configurated!");

				sessionFactory = configuration.buildSessionFactory(serviceRegistry);

				return sessionFactory;

			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return sessionFactory;
	}

}

package br.com.trive.muambyte;

import org.apache.catalina.core.ApplicationContext;
import org.hibernate.SessionFactory;
import org.hibernate.jpa.HibernateEntityManagerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.support.SpringBootServletInitializer;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.orm.jpa.vendor.HibernateJpaSessionFactoryBean;

import br.com.trive.muambyte.daos.OrderDao;

@SpringBootApplication
public class Boot
{
   public static void main(String[] args)
   {
      SpringApplication.run(Boot.class, args);
   }
   
   @Bean(name = "orderDAO")
   public OrderDao getOrderDao() {
       return new OrderDao();
   }
   
   @Bean
   public HibernateJpaSessionFactoryBean sessionFactory() {
       return new HibernateJpaSessionFactoryBean();
   }
}

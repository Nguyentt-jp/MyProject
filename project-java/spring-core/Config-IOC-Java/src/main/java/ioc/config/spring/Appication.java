package ioc.config.spring;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

public class Appication {
    public static void main(String[] args) {
        AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext(AppConfig.class);
        HelloWorld obj = (HelloWorld) context.getBean("helloWorld");
        obj.getMessage();
        context.close();
    }
}

package setterandcontructor;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

public class Application {

    public static void main(String[] args) {
        ApplicationContext context = new AnnotationConfigApplicationContext(AppConfig.class);
        ConstructorAndSetterDependency di  = context.getBean(ConstructorAndSetterDependency.class);

        // setter DI
        di.callMessage("Setter DI!");

        //Constructor DI

        di.callMessage("World!");
    }
}

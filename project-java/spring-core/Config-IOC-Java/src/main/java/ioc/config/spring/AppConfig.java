package ioc.config.spring;

import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class AppConfig {

    @Bean
    public HelloWorld helloWorld(){
        HelloWorld helloWorld = new HelloWorld();
        helloWorld.setMessage("Xao Chin!");
        return helloWorld;
    }
}

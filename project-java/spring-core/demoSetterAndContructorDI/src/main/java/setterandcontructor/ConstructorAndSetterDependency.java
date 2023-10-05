package setterandcontructor;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class ConstructorAndSetterDependency {
    private Message messageService;
    @Autowired
    public ConstructorAndSetterDependency(Message message){
        super();
        this.messageService = message;
    }

    @Autowired
    public void setMessage(Message message){
        this.messageService = message;
    }

    public void callMessage(String message){
        System.out.println(message);
    }
}

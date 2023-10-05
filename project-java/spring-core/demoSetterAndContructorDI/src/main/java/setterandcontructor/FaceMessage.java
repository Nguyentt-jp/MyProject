package setterandcontructor;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

@Service
public class FaceMessage implements Message{
    public void sendMsg(String mess) {
        System.out.println(mess);
    }
}

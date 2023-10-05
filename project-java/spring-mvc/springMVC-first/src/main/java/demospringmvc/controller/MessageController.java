package demospringmvc.controller;

import demospringmvc.entity.Message;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.time.LocalDateTime;

@Controller

public class MessageController {
    @RequestMapping("/hello")
    public String handler(Model model){
        Message msg = new Message();
        msg.setMessage("いらっしゃいませ。。。。！");
        msg.setDateTime(LocalDateTime.now().toString());
        model.addAttribute("msg", msg);

        return "msg";
    }
}

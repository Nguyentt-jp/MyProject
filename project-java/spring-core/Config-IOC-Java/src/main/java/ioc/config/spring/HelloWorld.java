package ioc.config.spring;

public class HelloWorld {
    private String Message;

    public void getMessage() {
        System.out.print("My Message:" + Message);
    }

    public void setMessage(String message) {
        Message = message;
    }
}

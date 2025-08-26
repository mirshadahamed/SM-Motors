package vehicleModel;


public class Feedback {
    private String email;
    private String name;
    private String subject;
    private String phone;
    private String message;

    public Feedback(String email, String name, String subject, String phone, String message) {
        this.email = email;
        this.name = name;
        this.subject = subject;
        this.phone = phone;
        this.message = message;
    }

   
    public String getEmail() {
        return email;
    }

    public String getName() {
        return name;
    }

    public String getSubject() {
        return subject;
    }

    public String getPhone() {
        return phone;
    }

    public String getMessage() {
        return message;
    }

  
    public void setEmail(String email) {
        this.email = email;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}

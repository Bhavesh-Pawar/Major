package p1;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;
import java.util.Random;


public class demojavamail 
{
    
    public char[] OTP(int len)
    {
        System.out.println("Generating OTP using random() : ");
        System.out.print("You OTP is : ");
  
        // Using numeric values
         String numbers = "0123456789";
  
        // Using random method
        Random rndm_method = new Random();
  
        char[] otp = new char[len];
  
        for (int i = 0; i < len; i++)
        {
            // Use of charAt() method : to get character value
            // Use of nextInt() as it is scanning the value as int
            otp[i] =
             numbers.charAt(rndm_method.nextInt(numbers.length()));
        }
        return otp;
    }
     public char[] Pass(int len)
    {
        System.out.println("Generating OTP using random() : ");
        System.out.print("You OTP is : ");
  
        // Using numeric values
         String numbers = "QWERTYUIOPASDFGHJKLZXCVBNM";
  
        // Using random method
        Random rndm_method = new Random();
  
        char[] otp = new char[len];
  
        for (int i = 0; i < len; i++)
        {
            // Use of charAt() method : to get character value
            // Use of nextInt() as it is scanning the value as int
            otp[i] =
             numbers.charAt(rndm_method.nextInt(numbers.length()));
        }
        return otp;
    }
	public static void main(String[] args) 
        {
            
        demojavamail obj= new demojavamail();
                                    int length=4;
                                    String OTP=String.valueOf(obj.OTP(length));
                                   
		System.out.println("preparing to send message ...");
		String message ="Your OTP to Recurit is : "+ OTP;
		String subject = "Recurit : Confirmation";
		String to = "bhaveshpawar456@gmail.com";
		String from = "bhaveshpawar456@gmail.com";
		
		obj.sendEmail(message,subject,to,from);
	}

	
	//this is responsible to send email..
	public void sendEmail(String message, String subject, String to, String from) 
        {
		
		//Variable for gmail
		String host="smtp.gmail.com";
		
		//get the system properties
		Properties properties = System.getProperties();
		System.out.println("PROPERTIES "+properties);
		
		//setting important information to properties object
		
		//host set
		properties.put("mail.smtp.host", host);
		properties.put("mail.smtp.port","465");
		properties.put("mail.smtp.ssl.enable","true");
		properties.put("mail.smtp.auth","true");
		
		//Step 1: to get the session object..
		Session session=Session.getInstance(properties, new Authenticator() 
                {
			@Override
			protected PasswordAuthentication getPasswordAuthentication() 
                        {				
				return new PasswordAuthentication(from, "Testyourskills100%");
			}
			
			
			
		});
		
		session.setDebug(true);
		
		//Step 2 : compose the message [text,multi media]
		MimeMessage m = new MimeMessage(session);
		
		try {
		
		//from email
		m.setFrom(new InternetAddress(from));
		
		//adding recipient to message
		m.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
		
		//adding subject to message
		m.setSubject(subject);
	
		
		//adding text to message
		m.setText(message);
		
		//send 
		
		//Step 3 : send the message using Transport class
		Transport.send(m);
		
		System.out.println("Sent success...................");
		
		
		}catch (Exception e) {
			e.printStackTrace();
		}
			
	}
}
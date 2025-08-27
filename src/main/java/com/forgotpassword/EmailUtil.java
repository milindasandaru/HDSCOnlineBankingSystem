package com.forgotpassword;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class EmailUtil {

	public static void sendOtpEmail(String toEmail, int otpValue) {
		
		Properties props = new Properties();
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "465");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.socketFactory.port", "465");
		props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
        
        Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication("sampleprojecte@gmail.com", "klcc ujdn riif zjwy");
            }
        });
        
        try {
        	MimeMessage message = new MimeMessage(session);
        	message.setFrom(new InternetAddress("sampleprojecte@gmail.com"));
        	message.addRecipient(Message.RecipientType.TO, new InternetAddress(toEmail));
            message.setSubject("OTP for Password Reset");
            message.setText("Your OTP is: " + otpValue);
            
            Transport.send(message);
            System.out.println("Your OTP is: " +otpValue);
        	
        }catch(MessagingException e) {
        	throw new RuntimeException(e);
        }
		
	}
}

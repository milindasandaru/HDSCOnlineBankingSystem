package com.billpayment;

import java.util.Properties;
import java.util.Random;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class OTPUtil {
	
	public static String generateOTP() {
		Random rand = new Random();
		int otp = 100000 + rand.nextInt(900000);
		return String.valueOf(otp);
	}
	
	public static void sendOTPEmail(String toEmail, String otp) {
		String fromEmail = "sampleprojecte@gmail.com";
	    String emailPassword = "klcc ujdn riif zjwy";
	
	    Properties props = new Properties();
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "465");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.socketFactory.port", "465");
		props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
        
        Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(fromEmail, emailPassword);
            }
        });
        
        try {
        	MimeMessage message = new MimeMessage(session);
        	message.setFrom(new InternetAddress("sampleprojecte@gmail.com"));
        	message.addRecipient(Message.RecipientType.TO, new InternetAddress(toEmail));
            message.setSubject("OTP for Password Reset");
            message.setText("Your OTP is: " + otp);
            
            Transport.send(message);
            System.out.println("Your OTP is: " +otp);
        	
        }catch(MessagingException e) {
        	throw new RuntimeException(e);
        }
		
	}
    
}

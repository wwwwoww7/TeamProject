package com.mycompany.webapp.email;

import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailException;
import org.springframework.mail.javamail.JavaMailSender;
	
public class EmailSender  {
	     
	private static final Logger logger = LoggerFactory.getLogger(EmailSender.class);
    @Autowired
    protected JavaMailSender mailSender;
 
    public void SendEmail(Email email) throws Exception {
         
        MimeMessage msg = mailSender.createMimeMessage();
        try {
        	msg.setSubject(email.getSubject());
	        msg.setText(email.getContent());
	        msg.setRecipients(MimeMessage.RecipientType.TO , InternetAddress.parse(email.getReceiver()));
	        logger.info("실행");
	        
        }catch(MessagingException e) {
        	
        	e.printStackTrace();
        }
        
        
        
        try {
        	mailSender.send(msg);
        }catch(MailException e) {
        
        	e.printStackTrace();
        }
        
        
        
    }

}

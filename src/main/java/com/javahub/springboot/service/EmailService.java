package com.javahub.springboot.service;

import javax.mail.MessagingException;

import org.springframework.web.multipart.MultipartFile;

import com.javahub.springboot.entity.Contact;


public interface EmailService {

	public void sendSimpleEmail(Contact contact) throws MessagingException;
	
	public void sendAttachmentEmail(Contact contact, MultipartFile file) throws MessagingException;
	
}

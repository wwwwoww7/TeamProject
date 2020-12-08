package com.mycompany.webapp.exception;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@Component
@ControllerAdvice
public class CustomExceptionHandler {

private static final Logger logger = LoggerFactory.getLogger(CustomExceptionHandler.class);
	
	@ExceptionHandler
	public String handleException(NullPointerException e) {  
		logger.info("실행");
		e.printStackTrace();
		return "/error/nullpointerexception";
	}
	
	@ExceptionHandler
	public String handleException(RuntimeException e) {  
		logger.info("실행");
		e.printStackTrace();
		return "/error/runtimeException";
	}
	
}

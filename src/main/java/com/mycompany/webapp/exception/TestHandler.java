package com.mycompany.webapp.exception;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@Component
@ControllerAdvice
public class TestHandler {
	private static final Logger logger = LoggerFactory.getLogger(TestHandler.class);
	//이렇게 여기서 exceptionhandler 주는게 유지보수 쉬움.
	
	@ExceptionHandler
	public String handleException(NullPointerException e) { //구체적인 예외가 우선이니까 nullpointer예외 발생시 여기로 들어오고, 그 외에 runtime은 밑의 예외처리로 간다. 
		logger.info("실행");
		e.printStackTrace();
		return "nullpointerexception";
	}
	
	@ExceptionHandler
	public String handleException(RuntimeException e) {
		logger.info("실행");
		e.printStackTrace();
		return "runtimeException";		
	}
	
}

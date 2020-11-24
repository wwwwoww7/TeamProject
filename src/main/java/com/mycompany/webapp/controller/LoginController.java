package com.mycompany.webapp.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.crypto.factory.PasswordEncoderFactories;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.mycompany.webapp.dao.UserDao;
import com.mycompany.webapp.dto.UserDto;
import com.mycompany.webapp.service.UserService;
/**
 * 2020. 11. 17 
 *
 */
@Controller
@RequestMapping("/login")
public class LoginController {
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	@RequestMapping("/login")
	public String Login() {
	
		return "login/login";
	}
	
	@Resource
	private UserService service;
	
	@PostMapping("/join")
	public String Join(UserDto user) throws IllegalStateException, IOException {
	
		  if(!user.getMphotoAttach().isEmpty()) { 
			  String originalFileName = user.getMphotoAttach().getOriginalFilename(); 
			  String extName = originalFileName.substring(originalFileName.lastIndexOf(".")); 
			  String saveName = user.getUser_id()+extName;
			  File dest = new File("D:/MyWorkspace/java-projects/TeamProject/WebContent/resources/profile/"+saveName);
			  user.getMphotoAttach().transferTo(dest);
			  user.setUser_pro_img(saveName); 
		  
		  } else { 
			  user.setUser_pro_img("unnamed.jpg"); } 
			  PasswordEncoder
			  passwordEncoder = PasswordEncoderFactories.createDelegatingPasswordEncoder();
			  String encodedPassword = passwordEncoder.encode(user.getUser_pw());
			  user.setUser_pw(encodedPassword); 
			  user.setUser_enabled(true);
			  service.join(user);
			  return "home";
	}
	
	@GetMapping("/join")
	public String Joinmove() {
		
		return"login/join";
	}
	
	@GetMapping("/findpw")
	public String getfindpw() {
		
		return "login/findpw";
	}
	
	@PostMapping("/findpw")
	public String postfindpw() {
		
		return "login/findpw";
	}
	@PostMapping("/boardUploadAjax")
	public String boardUploadAjax( MultipartFile attach , Model model) { 

		if(!attach.isEmpty()) {

			String saveFileName = new Date().getTime() + "_" +attach.getOriginalFilename(); 
			try {
				attach.transferTo(new File("C:/Temp/upload/" + saveFileName));
			} catch (Exception e) {
							
			}	
		}
		File uploadDir = new File("C:/Temp/upload");
		String[] fileNames = uploadDir.list();
		model.addAttribute("fileNames", fileNames);
		return "login/getFileList";

	}

	@GetMapping("/getFileList")
	public String getFileList(Model model) {
		File uploadDir = new File("C:/Temp/upload");
		String[] fileNames = uploadDir.list();
		model.addAttribute("fileNames", fileNames);
		return "login/getFileList";
	}

	@GetMapping("/download")
	public void download(String fileName, HttpServletRequest request, HttpServletResponse response) throws IOException{
		logger.info("fileName:" + fileName);
		
		//파일의 데이터를 읽기 위한 입력 스트림 얻기
		String saveFilePath = "C:/Temp/upload/" + fileName;
		InputStream is = new FileInputStream(saveFilePath);
		

		ServletContext application = request.getServletContext();
		String fileType = application.getMimeType(fileName);
		response.setContentType(fileType);
		String originalFileName = fileName.split("_")[1];
		originalFileName = new String(originalFileName.getBytes("UTF-8"), "ISO-8859-1"); 
		response.setHeader("Content-Disposition", "attachment; filename=\"" + originalFileName + "\""); 
		int fileSize = (int)new File(saveFilePath).length();
		response.setContentLength(fileSize);
		OutputStream os = response.getOutputStream();
		FileCopyUtils.copy(is, os);
		os.flush();
		os.close();
		is.close();
		
	}
}

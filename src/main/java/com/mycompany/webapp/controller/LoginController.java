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

	
	@Resource
	private UserDao userDao;
	
	
	
	
	@RequestMapping("/login")
	public String Login() {
		
		return "login/login";
	}
	
	@Resource
	private UserService service;//서비스 주입
	
	@PostMapping("/join")
	public String Join(UserDto user) throws IllegalStateException, IOException {
		
		  if(!user.getMphotoAttach().isEmpty()) { 
			  String originalFileName = user.getMphotoAttach().getOriginalFilename(); 
			  String extName = originalFileName.substring(originalFileName.lastIndexOf(".")); 
			  String saveName = user.getUser_id()+extName;
			  File dest = new File("D:/MyWorkspace/java-projects/TeamProject/WebContent/resources/profile/"+saveName);
			  user.getMphotoAttach().transferTo(dest);
			  user.setUser_pro_img(saveName); //database에 넣을 거.
		  
		  } else { 
			  user.setUser_pro_img("unnamed.jpg"); } 
			  PasswordEncoder
			  passwordEncoder = PasswordEncoderFactories.createDelegatingPasswordEncoder();
			  String encodedPassword = passwordEncoder.encode(user.getUser_pw());
			  user.setUser_pw(encodedPassword); 
			  user.setMenabled(true);
			  service.join(user);//controller가 만든 데이터를 service쪽으로 넘겨준다. logger.info("실행");
			 
			  return "login/join";
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
	public String boardUploadAjax( MultipartFile attach , Model model) { //파일이 오지 않았다고 null이 아님

		if(!attach.isEmpty()) {

			String saveFileName = new Date().getTime() + "_" +attach.getOriginalFilename(); //중복방지를 위해 시간과 함께 파일명을 저장.
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
	/*@PostMapping("/boardUpload")
	public String boardUpload(Ch09Board board) {
		logger.info("title: " + board.getTitle());
		logger.info("content: " + board.getContent());
		logger.info("attach file name: "+ board.getAttach().getOriginalFilename());
		logger.info("attach file size: "+ board.getAttach().getSize());
		logger.info("attach file type: "+ board.getAttach().getContentType());
		String saveFileName = new Date().getTime() + " " + board.getAttach().getOriginalFilename(); //중복방지를 위해 시간과 함께 파일명을 저장.
		try {
			board.getAttach().transferTo(new File("C:/Temp/upload/" + saveFileName));
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			
		}
		return "ch09/content";
	}*/
	
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
		
		//응답 HTTP 헤더 구성
		//1)Content-Type 헤더 구성(파일의 종류 지정)
		ServletContext application = request.getServletContext();
		String fileType = application.getMimeType(fileName); //fileName의 확장명을 알려줌.
		response.setContentType(fileType);
		//2)Content-Disposition 헤더 구성(다운로드할 파일의 이름을 지정)
		String originalFileName = fileName.split("_")[1];
		originalFileName = new String(originalFileName.getBytes("UTF-8"), "ISO-8859-1");//한글을 변환해서 넣어야함.한글을 아스키로 바꿔준다.브라우저마다 한글변환방식이다르지만 최신브라우저는 거의 다 이거. 
		response.setHeader("Content-Disposition", "attachment; filename=\"" + originalFileName + "\""); //실제 다운로드되는 파일의 이름이 들어간다. 파일이름에 한글이 포함되어있으면 한글이 꺠진다.
		//3)Content-Length 헤더 구성(다운로드 할 파일의 크기를 지정)
		int fileSize = (int)new File(saveFilePath).length(); //file size를 얻을 수 있음. long size임. 
		response.setContentLength(fileSize);
		
		//응답 HTTP의 본문(바디) 구성
		//본문은 철저하게 출력으로 처리한다. 
		OutputStream os = response.getOutputStream();//파일이니까 outputstream
		FileCopyUtils.copy(is, os);
		os.flush();
		os.close();
		is.close();
		
	}
}

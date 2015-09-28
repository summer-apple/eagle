package com.eagle.action;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.eagle.service.impl.UtilService;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonObjectFormatVisitor;

import net.sf.json.JSONObject;

@Controller
@RequestMapping("/util")
public class UtilAction {

	@Autowired
	private UtilService us;

	Logger logger = Logger.getLogger(UtilAction.class);

	@RequestMapping("/upload-image")
	@ResponseBody
	public String uploadImg(HttpServletRequest request,@RequestParam MultipartFile image,String folder) {

		String hz = image.getOriginalFilename().substring(image.getOriginalFilename().lastIndexOf("."));
		if (hz.toLowerCase().equals(".jpeg")) {
			hz = ".jpg";
		}
		String filename = new SimpleDateFormat("yyyyMMddhhmmss")
				.format(new Date())
				+ us.getRandomString(16)
				+ hz;
		logger.info("filename=" + filename);
		String url = "resources/images/gallery/"+ folder +"/"+ filename;
		logger.info("url=" + url);

		if (!image.isEmpty()) {
			try {
				// 文件保存路径
				String filePath = request.getSession().getServletContext()
						.getRealPath("/")+url;
				File file = new File(filePath);
				if (!file.exists()) {
					file.mkdirs();
				}
				// 转存文件
				image.transferTo(new File(filePath));
			} catch (IOException e) {
				logger.error(e);
			}
		}
		return url;
	}
	
	@RequestMapping("/upload-file")
	@ResponseBody
	public String uploadFile(HttpServletRequest request,@RequestParam MultipartFile file,String folder) {

		String hz = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));
		
		String filename = new SimpleDateFormat("yyyyMMddhhmmss")
				.format(new Date())
				+ us.getRandomString(16)
				+ hz;
		logger.info("filename=" + filename);
		String url = "resources/"+ folder +"/"+ filename;
		logger.info("url=" + url);

		if (!file.isEmpty()) {
			try {
				// 文件保存路径
				String filePath = request.getSession().getServletContext()
						.getRealPath("/")+url;
				File file1 = new File(filePath);
				if (!file1.exists()) {
					file1.mkdirs();
				}
				// 转存文件
				file.transferTo(new File(filePath));
			} catch (IOException e) {
				logger.error(e);
			}
		}
		JSONObject obj = new JSONObject();
		obj.put("name", filename);
		obj.put("url", url);
		return obj.toString();
	}

}

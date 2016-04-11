package com.eagle.action;


import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.eagle.entity.News;
import com.eagle.service.impl.ImgCompress;
import com.eagle.service.impl.NewsService;

@Controller 
@RequestMapping("/test")
public class TestAction {
	@Resource
	private ImgCompress ic;
	
	@Autowired
	NewsService ns;
	
	Logger logger = Logger.getLogger(TestAction.class);
	
	@RequestMapping("/compress")
	@ResponseBody
	public boolean compress(HttpServletRequest request,String folder,int w,int h) throws IOException{
		
		String path = request.getSession().getServletContext().getRealPath("/")+"resources/images/gallery/"+folder+"/";
		File file = new File(path);
		File[] list = file.listFiles();
		
		String filename = "";
		
			for (File file2 : list) {
				filename = file2.getAbsolutePath();
				logger.info("压缩--"+filename);
				try {
					ic.compress(filename, w, h);
				} catch (Exception e) {
					logger.error(e);
					continue;
				}
					
			}
			return true;
	}
	
	
	@RequestMapping("/filter")
	@ResponseBody
	public Map<String, Object> filter(HttpServletRequest request,String key){
		return ns.search(key, 0, 10);
	}
	
}

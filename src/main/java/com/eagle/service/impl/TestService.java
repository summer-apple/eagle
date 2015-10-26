package com.eagle.service.impl;


import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.eagle.dao.BaseDao;
import com.eagle.entity.About;
import com.eagle.entity.News;
import com.eagle.service.ITestService;
@Service
public class TestService implements ITestService {
	@Autowired
	private BaseDao<About> dao;
	@Autowired
	private NewsService ns;

	@Override
	public About getAbout(int id) {
		return dao.get(About.class, id);
	}
	
	
	
public String htmlToText(String htmlStr){

    String textStr ="";
    java.util.regex.Pattern p_script;
    java.util.regex.Matcher m_script;
    java.util.regex.Pattern p_style;
    java.util.regex.Matcher m_style;
    java.util.regex.Pattern p_html;
    java.util.regex.Matcher m_html;

  
         String regEx_script = "<[\\s]*?script[^>]*?>[\\s\\S]*?<[\\s]*?\\/[\\s]*?script[\\s]*?>"; //定义script的正则表达式{或<script[^>]*?>[\\s\\S]*?<\\/script> }
         String regEx_style = "<[\\s]*?style[^>]*?>[\\s\\S]*?<[\\s]*?\\/[\\s]*?style[\\s]*?>"; //定义style的正则表达式{或<style[^>]*?>[\\s\\S]*?<\\/style> }
         String regEx_html = "<[^>]+>"; //定义HTML标签的正则表达式

         p_script = Pattern.compile(regEx_script,Pattern.CASE_INSENSITIVE);
         m_script = p_script.matcher(htmlStr);
         htmlStr = m_script.replaceAll(""); //过滤script标签

         p_style = Pattern.compile(regEx_style,Pattern.CASE_INSENSITIVE);
         m_style = p_style.matcher(htmlStr);
         htmlStr = m_style.replaceAll(""); //过滤style标签

         p_html = Pattern.compile(regEx_html,Pattern.CASE_INSENSITIVE);
         m_html = p_html.matcher(htmlStr);
         htmlStr = m_html.replaceAll(""); //过滤html标签

         textStr = htmlStr;
    
    return textStr;//返回文本字符串
}


public void translate() {
	Map<String, Object> map = ns.qryAll("News", "2", 0, 1000);
	List<News> list = (List<News>) map.get("list");
	
	for(int i=0;i<list.size();i++){
		News news = list.get(i);
		String brief = news.getContent().replaceAll("<[^>]*>","");
		if (brief.length()>150) {
			brief = brief.substring(0,149);
		}
		news.setBrief(brief);
		ns.update(news);
	}
}
	
}

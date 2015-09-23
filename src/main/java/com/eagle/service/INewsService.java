package com.eagle.service;

import java.util.List;
import java.util.Map;

import com.eagle.entity.News;
import com.eagle.entity.Topnews;

public interface INewsService extends IBase<News> {
	public Map<String, Object> search(String keyword, int pageNo, int pageSize);

	public Map<String, Object> qryAllForAdmin(String tableName, String type, int pageNo, int pageSize);

	public List<Topnews> getTopNews();

}

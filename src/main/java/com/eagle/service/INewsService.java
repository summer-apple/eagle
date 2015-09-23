package com.eagle.service;

import java.util.List;


import com.eagle.entity.News;
import com.eagle.entity.Topnews;

public interface INewsService extends IBase<News> {
	public List<News> search(String keyword, int pageNo, int pageSize);

	public List<News> qryAllForAdmin(String tableName, String type, int pageNo, int pageSize);

	public List<Topnews> getTopNews();

}

package com.eagle.service;

import java.util.List;
import java.util.Map;

import com.eagle.entity.Cooperation;

public interface ICooperationService extends IBase<Cooperation> {
	public List<Cooperation> getTopCooperation(String type);
	public Map<String, Object> qryAll(String tableName, String type, String keyword,int pageNo, int pageSize);
}

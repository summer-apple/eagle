package com.eagle.service;

import java.util.List;

import com.eagle.entity.Cooperation;

public interface ICooperationService extends IBase<Cooperation> {
	public List<Cooperation> getTopCooperation(String type);
}

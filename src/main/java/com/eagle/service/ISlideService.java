package com.eagle.service;

import java.util.List;

import com.eagle.entity.Slide;

public interface ISlideService extends IBase<Slide> {
	public List<Slide> getTopSlide();
}

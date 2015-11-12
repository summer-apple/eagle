package com.eagle.action;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.eagle.entity.Cooperation;
import com.eagle.service.impl.CooperationService;

@Controller
@RequestMapping("/cooperation")
public class CooperationAction {
	@Autowired
	private CooperationService cs;

	Logger logger = Logger.getLogger(CooperationAction.class);

	@RequestMapping("/add")
	@ResponseBody
	public Serializable add(HttpServletRequest request, Cooperation cooperation) {
		return cs.add(cooperation);
	}

	@RequestMapping("/update")
	@ResponseBody
	public boolean update(HttpServletRequest request, Cooperation cooperation) {
		return cs.update(cooperation);
	}

	@RequestMapping("/qry")
	@ResponseBody
	public Map<String, Object> qry(HttpServletRequest request, String type, int pageNo, int pageSize,String keyword) {
		return cs.qryAll("Cooperation", type,keyword, pageNo, pageSize);
	}

	@RequestMapping("/del")
	@ResponseBody
	public boolean update(HttpServletRequest request, int id) {
		return cs.delete(Cooperation.class, id);
	}

	@RequestMapping("/get-one")
	@ResponseBody
	public Cooperation getOne(HttpServletRequest request, int id) {
		return cs.qryOne(Cooperation.class, id);
	}
	
	@RequestMapping("/get-top")
	@ResponseBody
	public List<Cooperation> getTop(HttpServletRequest request,String type) {
		return cs.getTopCooperation(type);
	}

}

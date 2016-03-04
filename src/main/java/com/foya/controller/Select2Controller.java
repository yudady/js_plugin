package com.foya.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.foya.dto.select2Vo;

@Controller
public class Select2Controller {
	private static final Logger mLogger = LoggerFactory.getLogger(Select2Controller.class);


	@RequestMapping(value = { "/select2" }, method = RequestMethod.GET)
	public String index(HttpServletRequest request, HttpSession session) {
		mLogger.debug("Select2Controller.index");
		return "select2";
	}


//	@RequestMapping(value = { "/select2/data" }, method = RequestMethod.GET)
//	@ResponseBody
//	public String data(HttpServletRequest request, HttpSession session) {
//		mLogger.debug("Select2Controller.data");
//		return "[{ id: 0, text: 'enhancement' }, { id: 1, text: 'bug' }, { id: 2, text: 'duplicate' }, { id: 3, text: 'invalid' }, { id: 4, text: 'wontfix' }];";
//	}
	@RequestMapping(value = { "/select2/data" }, method = RequestMethod.GET)
	@ResponseBody
	public List<select2Vo> data(HttpServletRequest request, HttpSession session) {
		mLogger.debug("[LOG]Select2Controller.data");
		mLogger.debug("[LOG]Select2Controller.data");
		mLogger.debug("[LOG]Select2Controller.data");
		mLogger.debug("[LOG]Select2Controller.data");
		List<select2Vo> select = new ArrayList<>();
		select.add(new select2Vo("1", "1"));
		select.add(new select2Vo("2", "2"));
		select.add(new select2Vo("3", "3"));
		return select;
	}

}

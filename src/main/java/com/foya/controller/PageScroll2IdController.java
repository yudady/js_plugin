package com.foya.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class PageScroll2IdController {
	private static final Logger mLogger = LoggerFactory.getLogger(PageScroll2IdController.class);


	@RequestMapping(value = { "/pageScroll2Id" }, method = RequestMethod.GET)
	public String index(HttpServletRequest request, HttpSession session) {
		mLogger.debug("Select2Controller.index");

		return "pageScroll2Id";
	}


}

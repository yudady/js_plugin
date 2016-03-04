package com.foya.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class SweetAlert2Controller {
	private static final Logger mLogger = LoggerFactory.getLogger(SweetAlert2Controller.class);


	@RequestMapping(value = { "/sweetAlert2" }, method = RequestMethod.GET)
	public String index(HttpServletRequest request, HttpSession session) {
		mLogger.debug("SweetAlert2Controller.index");
		return "sweetAlert2";
	}



}

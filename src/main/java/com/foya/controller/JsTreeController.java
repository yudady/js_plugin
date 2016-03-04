package com.foya.controller;

import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.foya.dto.NavItem;
import com.foya.service.NavServiceDemo;

@Controller
public class JsTreeController {
	private static final Logger mLogger = LoggerFactory.getLogger(JsTreeController.class);


	@Autowired
	private NavServiceDemo navServiceDemo;

	@RequestMapping(value = { "/jstree" }, method = RequestMethod.GET)
	public String index(HttpServletRequest request, HttpSession session) {
		mLogger.debug("ScrolltableController.index");
		return "jstree";
	}


	@RequestMapping(value = { "/jstree/data" }, method = RequestMethod.GET)
	@ResponseBody
	public Set<NavItem> data(HttpServletRequest request, HttpSession session) {
		mLogger.debug("NavController.nav");
		Set<NavItem> trees = navServiceDemo.getNav();

		return trees;
	}

}

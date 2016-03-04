package com.foya.service;

import java.util.HashSet;
import java.util.Set;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.foya.dto.NavItem;


@Service
public class NavServiceDemo  {

	private static final Logger mLogger = LoggerFactory.getLogger(NavServiceDemo.class);

	public Set<NavItem> getNav() {
		mLogger.debug("[NavServiceDemo.getNav]");
		Set<NavItem> items = new HashSet<NavItem>();
		items.add(new NavItem("hp1", "#", "HP", ""));
		items.add(new NavItem("hp11", "hp1", "HP1", ""));
		items.add(new NavItem("hp12", "hp1", "HP12", "/js_plugin/jstree"));
		items.add(new NavItem("hp13", "hp1", "HP13", "/js_plugin/jstree"));
		items.add(new NavItem("hp14", "hp1", "HP14", "/js_plugin/jstree"));
		items.add(new NavItem("hp2", "#", "HP2", ""));
		items.add(new NavItem("hp21", "hp2", "HP21", ""));
		items.add(new NavItem("hp3", "#", "HP3", ""));
		return items;
	}

}
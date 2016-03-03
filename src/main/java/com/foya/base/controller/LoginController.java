package com.foya.base.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
<code>
目的:
===================
作用:
-----------------------
> 描述:


</code>
 * @author tommy E-mail:tommylin@foyatech.com
 * @create 創建時間：2016年3月3日 下午3:54:32
 * @version 1.0
 */
@Controller
public class LoginController {
	private static final Logger mLogger = LoggerFactory.getLogger(LoginController.class);



	/**
	 *
	 * <pre>
	 * Method Name : index
	 * Description : 一開始AD登入
	 * </pre>
	 *
	 * @param model
	 * @return
	 */
	@RequestMapping(value = { "", "/" }, method = RequestMethod.GET)
	public String index(HttpServletRequest request, HttpSession session) {
		mLogger.debug("LoginController.index");

		return "index";
	}

}

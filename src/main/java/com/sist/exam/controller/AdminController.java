package com.sist.exam.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class AdminController {

	@RequestMapping(value = "/admin")
	public String main(String menu)
	{
		
		return "/admin/admin_main";
	}
	
	@RequestMapping(value = "/testlist")
	public String testlist() {
		
		return "/admin/testlist";
	}
	
	@RequestMapping(value = "/grouplist")
	public String grouplist() {
		
		return "/admin/grouplist";
	}
	
	@RequestMapping(value = "/manage")
	public String manageAdmin() {
		
		return "/admin/manage";
	}
	
	@RequestMapping(value = "/setexam")
	public String tiles() {
		
		return "/admin/set_exam";
	}
	
	
	
	@RequestMapping(value = "/join")
	public String join(Model model) {

		return "/admin/join";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {

		return "/admin/login";
	}

	@RequestMapping(value = "/loginProc")
	public String loginProc() {
		
		//compare id from db
		
		
		
		
		return "/admin/admin_main";
	}
	
	

}

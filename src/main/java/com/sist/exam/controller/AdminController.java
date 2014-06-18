package com.sist.exam.controller;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sist.exam.dao.AdminDao;
import com.sist.exam.vo.Admin;

/**
 * Handles requests for the application home page.
 */

@Controller
public class AdminController {
	

	@Autowired
	private SqlSession sqlSession;
	

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
	public String manageAdmin(Model m) throws ClassNotFoundException, SQLException {
		
		AdminDao adminDao = sqlSession.getMapper(AdminDao.class);
		
		List<Admin> list = adminDao.getAdminList();
		m.addAttribute("admin", list);
		
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

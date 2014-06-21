package com.sist.exam.controller;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sist.exam.dao.AdminDao;
import com.sist.exam.dao.SubjectDao;
import com.sist.exam.vo.Admin;
import com.sist.exam.vo.Subject;

/**
 * Handles requests for the application home page.
 */

@Controller
public class AdminController {
	

	@Autowired
	private SqlSession sqlSession;
	
	//메인
	@RequestMapping(value = "/admin")
	public String main(String menu)
	{
		
		return "/admin/admin_main";
	}
	
	
	
	//테스트과목
	@RequestMapping(value = "/testlist")
	public String testlist(Model m) throws ClassNotFoundException, SQLException {
		
		SubjectDao subDao = sqlSession.getMapper(SubjectDao.class);
		
		List<Subject> list = subDao.getSubjectList();
		
		m.addAttribute("sub", list);
		
		return "/admin/testlist";
	}
	
	
	//과목추가
	@RequestMapping(value = "/add_subject")
	public String addSubject(Subject subject) throws ClassNotFoundException, SQLException {
		
		SubjectDao subDao = sqlSession.getMapper(SubjectDao.class);
		
		subDao.insert(subject);
		
		return "redirect:/testlist";
	}
	
	
	
	
	
	//테스트그룹
	@RequestMapping(value = "/grouplist")
	public String grouplist() {
		
		return "/admin/grouplist";
	}
	

	//관리자관리
	@RequestMapping(value = "/manage")
	public String manageAdmin(Model m) throws ClassNotFoundException, SQLException {
		
		AdminDao adminDao = sqlSession.getMapper(AdminDao.class);
		
		List<Admin> list = adminDao.getAdminList();
		m.addAttribute("admin", list);
		
		return "/admin/manage";
	}
	//관리자추가
	@RequestMapping(value = "/regadmin")
	public String registerAdmin(Admin admin, HttpServletRequest req) throws ClassNotFoundException, SQLException {
		
		AdminDao adminDao = sqlSession.getMapper(AdminDao.class);
		adminDao.insert(admin);
//		System.out.println(admin.getAdmin_id());
		
		return "redirect:/manage";
	}
	
	
	//문제출제
	@RequestMapping(value = "/setquest")
	public String setQuest() {
		
		return "/admin/setQuest";
	}
	
	
	//문제관리
	@RequestMapping(value = "/managequest")
	public String manageQuest(Model m) throws ClassNotFoundException, SQLException {
		
		
		return "/admin/manageQuest";
	}
	
	
	//테스트출제
	@RequestMapping(value = "/setexam")
	public String setExam() {
		
		return "/admin/setExam";
	}
	
	
	//테스트관리
	@RequestMapping(value = "/manageexam")
	public String manageExam() {
		
		return "/admin/manageExam";
	}
		
	
	
	
	
	
	//회원가입
	@RequestMapping(value = "/join")
	public String join(Model model) {

		return "/admin/join";
	}
	
	
	//로그인
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {

		return "/admin/login";
	}

	
	
	//로그인처리
	@RequestMapping(value = "/loginProc")
	public String loginProc() {
		
		//compare id from db
		
		
		
		
		return "/admin/admin_main";
	}
	
	

}

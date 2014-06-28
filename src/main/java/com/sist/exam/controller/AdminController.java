package com.sist.exam.controller;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sist.exam.dao.AdminsDao;
import com.sist.exam.dao.ExamsDao;
import com.sist.exam.dao.GroupsDao;
import com.sist.exam.dao.SubjectsDao;
import com.sist.exam.vo.Admins;
import com.sist.exam.vo.Exams;
import com.sist.exam.vo.Groups;
import com.sist.exam.vo.Subjects;

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
		
		SubjectsDao subDao = sqlSession.getMapper(SubjectsDao.class);
		
		List<Subjects> list = subDao.getSubjectList(); 
		
		m.addAttribute("subject", list);
		
		return "/admin/testlist";
	}
	
		
	//과목추가
	@RequestMapping(value = "/add_subject")
	public String addSubject(Subjects subject) throws ClassNotFoundException, SQLException {
		
		
		SubjectsDao subDao = sqlSession.getMapper(SubjectsDao.class);

		subDao.insert(subject);
		
		return "redirect:/testlist";
	}
	
	//과목수정
	@RequestMapping(value = "/mod_subject")
	public String modSubject(String curr_name, String new_name) throws ClassNotFoundException, SQLException {
		
		
		SubjectsDao subDao = sqlSession.getMapper(SubjectsDao.class);

		subDao.update(curr_name, new_name);
			
		
		return "redirect:/testlist";
	}	
	
	//과목삭제
	@RequestMapping(value = "/del_subject")
	public String delSubject(String curr_name) throws ClassNotFoundException, SQLException {
		
		
		SubjectsDao subDao = sqlSession.getMapper(SubjectsDao.class);
		
		subDao.delete(curr_name);
		
		return "redirect:/testlist";
	}	
	
	
	
	
	//테스트그룹
	@RequestMapping(value = "/grouplist")
	public String grouplist(Model m) throws ClassNotFoundException, SQLException  {
	
		GroupsDao gDao = sqlSession.getMapper(GroupsDao.class);
		List<Groups> list = gDao.getGroupList();
		
		m.addAttribute("group", list);
		
		return "/admin/grouplist";
	}
	
	
	//그룹추가
	@RequestMapping(value = "/add_group")
	public String addGroup(Groups g) throws ClassNotFoundException, SQLException  {
		
		GroupsDao gDao = sqlSession.getMapper(GroupsDao.class);
		gDao.insert(g);
		
		return "redirect:/grouplist";
	}
	
	//그룹수정
	@RequestMapping(value = "/mod_group")
	public String modGroup(String curr_name, String new_name) throws ClassNotFoundException, SQLException  {
		
		GroupsDao cDao = sqlSession.getMapper(GroupsDao.class);

		
		cDao.update(curr_name, new_name);
		
		return "redirect:/grouplist";
	}
	
	//그룹삭제
	@RequestMapping(value = "/del_group")
	public String delGroup(String curr_name) throws ClassNotFoundException, SQLException  {
		
		GroupsDao cDao = sqlSession.getMapper(GroupsDao.class);
		
		cDao.delete(curr_name);
		
		return "redirect:/grouplist";
	}	
	
	
	

	//관리자관리
	@RequestMapping(value = "/manage")
	public String manageAdmin(Model m) throws ClassNotFoundException, SQLException {
		
		AdminsDao adminDao = sqlSession.getMapper(AdminsDao.class);
		
		List<Admins> list = adminDao.getAdminList();
		m.addAttribute("admin", list);
		
		return "/admin/manage";
	}

	
	//관리자추가
	@RequestMapping(value = "/regadmin")
	public String registerAdmin(Admins admin) throws ClassNotFoundException, SQLException {
		
		AdminsDao adminDao = sqlSession.getMapper(AdminsDao.class);
		adminDao.insert(admin);
		
		return "redirect:/admin";
	}
	
	
	//문제출제
	@RequestMapping(value = "/setquest")
	public String setQuest(Model m) throws ClassNotFoundException, SQLException {
		
		SubjectsDao subDao = sqlSession.getMapper(SubjectsDao.class);
		
		List<Subjects> list = subDao.getSubjectList();
		
		m.addAttribute("subject", list);
		
		
		return "/admin/setQuest";
	}

	@RequestMapping(value = "/setQuestProc")
	public String setQuestProc(Exams e) throws ClassNotFoundException, SQLException {
		
		ExamsDao exDao = sqlSession.getMapper(ExamsDao.class);
		exDao.insert(e);

		
//		System.out.println(e.getSubject_no());
//		System.out.println(e.getType());
//		System.out.println(e.getQuestion());
//		System.out.println(e.getEx1());
//		System.out.println(e.getEx2());
//		System.out.println(e.getEx3());
//		System.out.println(e.getEx4());
//		System.out.println(e.getAnswer());
//		System.out.println(e.getAnswer_ju());
//		System.out.println(e.getExplain());
//		System.out.println(e.getLevel());
//		System.out.println(e.getScore());
//		
		return "redirect:/setquest";
	}
	
	
	//문제관리
	@RequestMapping(value = "/managequest")
	public String manageQuest(Model m, String field, String query ) throws ClassNotFoundException, SQLException {
		
		ExamsDao exDao = sqlSession.getMapper(ExamsDao.class);
		SubjectsDao subDao = sqlSession.getMapper(SubjectsDao.class);
		String sub_no = "";
		String q ="";
		
		if(field==null)
		{
			field="subject";
		}
		if(query==null)
		{
			query="";
		}
		q = "%"+query+"%";
		
		//과목일경우 처리
		if(field.equals("subject"))
		{
				List<Exams> list = exDao.getExamList("subject_no", q);
				m.addAttribute("exams", list);
		}
		
		//과목이 아닌경우
		else
		{
			List<Exams> list = exDao.getExamList(field, q);
			m.addAttribute("exams", list);
		}
		//과목번호 파싱 미완성
		
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
	
	//중복검사
	@RequestMapping(value ="/id_check")
	public String idCheck(HttpServletRequest req, Model m) throws ClassNotFoundException, SQLException	{
	
//		String id = req.getParameter("uid");
//		
//		AdminDao aDao = sqlSession.getMapper(AdminDao.class);
//		Admin admin = aDao.getAdmin(id);
//		
//		
//		if(admin.getAdmin_id()!=null) 
//		{
//
//		}
			
			
		return "/admin/idCheck";
		
	}
	
	
	
	
	//로그인
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {

		return "/admin/login";
	}

	
	
	//로그인처리
	@RequestMapping(value = "/loginProc") 
	public String loginProc(HttpServletRequest req) throws ClassNotFoundException, SQLException {
		
		AdminsDao aDao = sqlSession.getMapper(AdminsDao.class);
		
		String uid = req.getParameter("uid");
		String pwd = req.getParameter("pwd");
		
		Admins admin = aDao.getAdmin(uid);
		
		if(admin == null)
		{
			//회원이 없습니다.
		}
		
		
		else if(!admin.getAdmin_pw().equals(pwd))
		{
			//비밀번호가 일치 하지 않습니다
		}
		
		else if(admin.getAdmin_pw().equals(pwd))
		{
			HttpSession session = req.getSession();
			
			session.setAttribute("uid", uid);
			
			return "/admin/admin_main";
		}
		
		return "/admin/login";
	}
	
	@RequestMapping(value = "/logoutProc")
	public String logoutProc(HttpSession session)
	{
		session.invalidate();
		
		return "/admin/login";
	}
}

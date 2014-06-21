package com.sist.exam.dao;

import java.sql.SQLException;
import java.util.List;

import com.sist.exam.vo.Subject;

public interface SubjectDao {
	
	public List<Subject> getSubjectList() throws SQLException, ClassNotFoundException;
	public int insert(Subject subject) throws SQLException, ClassNotFoundException;
	public int update(String sub_no) throws SQLException, ClassNotFoundException;
	public int delete(String sub_no) throws SQLException, ClassNotFoundException;
	
	//업데이트 딜리트 인자 변수명 불확실.
}

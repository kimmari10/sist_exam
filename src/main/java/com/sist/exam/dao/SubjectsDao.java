package com.sist.exam.dao;

import java.sql.SQLException;
import java.util.List;

import com.sist.exam.vo.Subjects;

public interface SubjectsDao {
	
	public List<Subjects> getSubjectList() throws SQLException, ClassNotFoundException;
	public String getSubjectNo(String query) throws SQLException, ClassNotFoundException;
	public int insert(Subjects subject) throws SQLException, ClassNotFoundException;
	public int update(String curr_name, String new_name) throws SQLException, ClassNotFoundException;
	public int delete(String curr_name) throws SQLException, ClassNotFoundException;
	
	//업데이트 딜리트 인자 변수명 불확실.
}

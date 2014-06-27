package com.sist.exam.dao;

import java.sql.SQLException;
import java.util.List;

import com.sist.exam.vo.Exams;

public interface ExamsDao {
	
	public List<Exams> getExamList() throws SQLException, ClassNotFoundException;
	public Exams getExam() throws SQLException, ClassNotFoundException;
	public int insert(Exams e) throws SQLException, ClassNotFoundException;
	public int update() throws SQLException, ClassNotFoundException;
	public int delete() throws SQLException, ClassNotFoundException;

}

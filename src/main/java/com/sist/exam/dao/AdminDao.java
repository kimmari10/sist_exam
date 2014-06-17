package com.sist.exam.dao;

import java.sql.SQLException;
import java.util.List;

import com.sist.exam.vo.Admin;


public interface AdminDao {
	public List<Admin> getAdminList() throws SQLException, ClassNotFoundException;
	
}
